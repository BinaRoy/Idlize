import { CommonConfiguration, Callback, CommonMethod, Optional, ContentModifier, Bindable } from './common'
import { ResourceStr } from './units';
declare interface RatingOptions {
  rating: number;
  rating: number | undefined | Bindable<number>;
  indicator?: boolean
}
declare interface StarStyleOptions {
  backgroundUri: ResourceStr;
  foregroundUri: ResourceStr;
  secondaryUri?: ResourceStr
}
interface RatingInterface {
  (options?: RatingOptions): RatingAttribute;
}
declare interface RatingConfiguration extends CommonConfiguration<RatingConfiguration> {
  rating: number;
  indicator: boolean;
  stars: number;
  stepSize: number;
  triggerChange: Callback<number>;
}
  declare type OnRatingChangeCallback = (rating: number) => void;
declare class RatingAttribute extends CommonMethod<RatingAttribute> {
  stars(value: number): RatingAttribute;
  stars(starCount: Optional<number>): RatingAttribute;
  stepSize(value: number): RatingAttribute;
  stepSize(size: Optional<number>): RatingAttribute;
  starStyle(options: StarStyleOptions): RatingAttribute;
  starStyle(options: Optional<StarStyleOptions>): RatingAttribute;
  onChange(callback: (value: number) => void): RatingAttribute;
  onChange(callback: Optional<OnRatingChangeCallback>): RatingAttribute;
  contentModifier(modifier: ContentModifier<RatingConfiguration>): RatingAttribute;
  contentModifier(modifier: Optional<ContentModifier<RatingConfiguration>>): RatingAttribute;
}
declare const Rating: RatingInterface;
declare const RatingInstance: RatingAttribute;