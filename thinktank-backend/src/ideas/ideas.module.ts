import { Module } from '@nestjs/common';
import { IdeasService } from './ideas.service';
import { IdeasController } from './ideas.controller';
import { TypeOrmModule } from '@nestjs/typeorm';
import { Idea } from './entities/ideas.entity'; // Assuming you have an Idea entity
import { UsersModule } from '../users/users.module'; 
import { JwtAuthGuard } from 'src/auth/guards/jwt-auth.guard';
import { RolesGuard } from 'src/auth/guards/roles.guard';
@Module({
  imports: [TypeOrmModule.forFeature([Idea]), UsersModule], 
  providers: [IdeasService, JwtAuthGuard, RolesGuard],
  controllers: [IdeasController],
  exports: [IdeasService],
})
export class IdeasModule {}
