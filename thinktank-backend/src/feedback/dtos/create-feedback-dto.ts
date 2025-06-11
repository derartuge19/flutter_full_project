import {
  IsString,
  IsInt,
  IsOptional,
  IsEnum,
  IsNotEmpty,
} from 'class-validator';
import { FeedbackStatus } from '../entities/feedback.entity';

export class CreateFeedbackDto {
  @IsNotEmpty()
  @IsInt()
  ideaId: number;

  @IsNotEmpty()
  @IsString()
  comment: string;

  @IsOptional()
  @IsEnum(FeedbackStatus)
  status?: FeedbackStatus;
}
