import {
  Injectable,
  CanActivate,
  ExecutionContext,
  ForbiddenException,
} from '@nestjs/common';
import { Reflector } from '@nestjs/core';
import { Observable } from 'rxjs';
import { ROLES_KEY } from '../decorators/roles.decorator';

@Injectable()
export class RolesGuard implements CanActivate {
  constructor(private reflector: Reflector) {}

  canActivate(
    context: ExecutionContext,
  ): boolean | Promise<boolean> | Observable<boolean> {
    const requiredRoles = this.reflector.get<string[]>(
      ROLES_KEY,
      context.getHandler(),
    );
    console.log('Required Roles:', requiredRoles); 

    if (!requiredRoles) {
      return true; 
    }

    const request = context.switchToHttp().getRequest();
    const user = request.user;
    console.log('User in RolesGuard:', user); 

    if (!user) {
      console.error('User object not found on request in RolesGuard');
      throw new ForbiddenException('User not authenticated');
    }

    if (!user.role) {
      console.error(
        'User role property not found on request.user in RolesGuard:',
        user,
      );
      throw new ForbiddenException('User role not found');
    }

    const hasRole = requiredRoles.some((role) => {
      if (typeof user.role === 'string') {
        return user.role === role; // Exact string match for single role
      } else if (Array.isArray(user.role)) {
        return user.role.includes(role); 
      }
      return false; 
    });
    console.log('User Role:', user.role); 
    console.log('Has Required Role:', hasRole); 

    if (!hasRole) {
      throw new ForbiddenException(
        'You do not have permission to access this resource',
      );
    }

    return true; // User has the required role
  }
}
