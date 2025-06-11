import { IsString, IsOptional, IsEnum } from 'class-validator';
import { FeedbackStatus } from '../entities/feedback.entity'; // Assuming you have this enum

export class UpdateFeedbackDto {
  @IsOptional()
  @IsString()
  comment?: string;

  @IsOptional()
  @IsEnum(FeedbackStatus)
  status?: FeedbackStatus;

 
}
