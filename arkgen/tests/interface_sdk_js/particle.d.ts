import { LengthMetrics, SizeT, PositionT } from '../../arkui/Graphics'
import { VP, ResourceStr,Dimension,ResourceColor } from './units'
import { ImageFit, Curve } from './enums'
import { ICurve, CommonMethod } from './common'
declare type ParticleTuple<T1, T2> = [T1, T2];
declare interface VelocityOptions {
  speed: ParticleTuple<number, number>;
  angle: ParticleTuple<number, number>;
}
declare interface AccelerationOptions<
  ACC_SPEED_UPDATER extends ParticleUpdater,
  ACC_ANGLE_UPDATER extends ParticleUpdater
> {
  speed?: ParticlePropertyOptions<number, ACC_SPEED_UPDATER>;
  angle?: ParticlePropertyOptions<number, ACC_ANGLE_UPDATER>;
}
declare interface AccelerationOptions {
  speed?: ParticlePropertyOptions;
 angle?: ParticlePropertyOptions;
}
interface ParticleOptions<
  PARTICLE extends ParticleType,
  COLOR_UPDATER extends ParticleUpdater,
  OPACITY_UPDATER extends ParticleUpdater,
  SCALE_UPDATER extends ParticleUpdater,
  ACC_SPEED_UPDATER extends ParticleUpdater,
  ACC_ANGLE_UPDATER extends ParticleUpdater,
  SPIN_UPDATER extends ParticleUpdater
> {
  emitter: EmitterOptions<PARTICLE>;
  color?: ParticleColorPropertyOptions<COLOR_UPDATER>;
  opacity?: ParticlePropertyOptions<number, OPACITY_UPDATER>;
  scale?: ParticlePropertyOptions<number, SCALE_UPDATER>;
  velocity?: VelocityOptions;
  acceleration?: AccelerationOptions<ACC_SPEED_UPDATER, ACC_ANGLE_UPDATER>;
  spin?: ParticlePropertyOptions<number, SPIN_UPDATER>;
}
interface ParticleOptions {
  emitter: EmitterOptions;
  color?: ParticleColorPropertyOptions;
  opacity?: ParticlePropertyOptions;
  scale?: ParticlePropertyOptions;
  velocity?: VelocityOptions;
  acceleration?: AccelerationOptions;
  spin?: ParticlePropertyOptions;
}
interface PointParticleParameters {
  radius: VP;
}
interface ImageParticleParameters {
  src: ResourceStr;
  size: ParticleTuple<Dimension, Dimension>;
  objectFit?: ImageFit;
}
interface ParticleConfigs {
  [ParticleType.POINT]: PointParticleParameters;
  [ParticleType.IMAGE]: ImageParticleParameters;
}
declare type ParticleConfigs = PointParticleParameters | ImageParticleParameters;
interface EmitterProperty {
  index: number;
  emitRate?: number;
  position?: PositionT<number>;
  size?: SizeT<number>;
  annulusRegion?: ParticleAnnulusRegion;
}
interface EmitterParticleOptions<PARTICLE extends ParticleType> {
  type: PARTICLE;
  config: ParticleConfigs[PARTICLE];
  count: number;
  lifetime?: number;
  lifetimeRange?: number;
}
interface EmitterParticleOptions {
  type: ParticleType;
  config: ParticleConfigs;
  count: number;
  lifetime?: number;
  lifetimeRange?: number;
}
interface EmitterOptions<PARTICLE extends ParticleType> {
  particle: EmitterParticleOptions<PARTICLE>;
  emitRate?: number;
  shape?: ParticleEmitterShape;
  position?: ParticleTuple<Dimension, Dimension>;
  size?: ParticleTuple<Dimension, Dimension>;
  annulusRegion?: ParticleAnnulusRegion;
}
interface EmitterOptions {
  particle: EmitterParticleOptions;
  emitRate?: number;
  shape?: ParticleEmitterShape;
  position?: ParticleTuple<Dimension, Dimension>;
  size?: ParticleTuple<Dimension, Dimension>;
  annulusRegion?: ParticleAnnulusRegion;
}
interface ParticlePropertyUpdaterConfigs<T> {
  [ParticleUpdater.NONE]: void;
  [ParticleUpdater.RANDOM]: ParticleTuple<T, T>;
  [ParticleUpdater.CURVE]: Array<ParticlePropertyAnimation<T>>;
}
declare type ParticlePropertyUpdaterConfigs = undefined | ParticleTuple<number, number> |  Array<ParticlePropertyAnimation<number>>;
interface ParticleUpdaterOptions<TYPE, UPDATER extends ParticleUpdater> {
  type: UPDATER;
  config: ParticlePropertyUpdaterConfigs<TYPE>[UPDATER];
}
interface ParticleUpdaterOptions {
  type: ParticleUpdater;
  config: ParticlePropertyUpdaterConfigs;
}
interface ParticleColorOptions {
  r: ParticleTuple<number, number>;
  g: ParticleTuple<number, number>;
  b: ParticleTuple<number, number>;
  a: ParticleTuple<number, number>;
}
interface ParticleColorUpdaterOptions<UPDATER extends ParticleUpdater> {
  type: UPDATER;
  config: ParticleColorPropertyUpdaterConfigs[UPDATER];
}
interface ParticleColorUpdaterOptions {
  type: ParticleUpdater;
  config: ParticleColorPropertyUpdaterConfigs;
}
interface ParticlePropertyOptions<TYPE, UPDATER extends ParticleUpdater> {
  range: ParticleTuple<TYPE, TYPE>;
  updater?: ParticleUpdaterOptions<TYPE, UPDATER>;
}
interface ParticlePropertyOptions {
  range: ParticleTuple<number, number>;
  updater?: ParticleUpdaterOptions;
}
interface ParticleColorPropertyUpdaterConfigs {
  [ParticleUpdater.NONE]: void;
  [ParticleUpdater.RANDOM]: ParticleColorOptions;
  [ParticleUpdater.CURVE]: Array<ParticlePropertyAnimation<ResourceColor>>;
}
declare type ParticleColorPropertyUpdaterConfigs = undefined | ParticleColorOptions | Array<ParticlePropertyAnimation<ResourceColor>>; 
interface ParticleColorPropertyOptions<UPDATER extends ParticleUpdater> {
  range: ParticleTuple<ResourceColor, ResourceColor>;
  distributionType?: DistributionType;
  updater?: ParticleColorUpdaterOptions<UPDATER>;
}
interface ParticleColorPropertyOptions {
  range: ParticleTuple<ResourceColor, ResourceColor>;
  distributionType?: DistributionType;
  updater?: ParticleColorUpdaterOptions;
}
interface ParticlePropertyAnimation<T> {
  from: T;
  to: T;
  startMillis: number;
  endMillis: number;
  curve?: Curve | ICurve;
}
interface Particles<
  PARTICLE extends ParticleType,
  COLOR_UPDATER extends ParticleUpdater,
  OPACITY_UPDATER extends ParticleUpdater,
  SCALE_UPDATER extends ParticleUpdater,
  ACC_SPEED_UPDATER extends ParticleUpdater,
  ACC_ANGLE_UPDATER extends ParticleUpdater,
  SPIN_UPDATER extends ParticleUpdater
> {
  particles: Array<
    ParticleOptions<
      PARTICLE,
      COLOR_UPDATER,
      OPACITY_UPDATER,
      SCALE_UPDATER,
      ACC_SPEED_UPDATER,
      ACC_ANGLE_UPDATER,
      SPIN_UPDATER
    >
  >;
}
interface Particles {
 particles: Array<ParticleOptions>;
}
interface ParticleInterface {
  <
    PARTICLE extends ParticleType,
    COLOR_UPDATER extends ParticleUpdater,
    OPACITY_UPDATER extends ParticleUpdater,
    SCALE_UPDATER extends ParticleUpdater,
    ACC_SPEED_UPDATER extends ParticleUpdater,
    ACC_ANGLE_UPDATER extends ParticleUpdater,
    SPIN_UPDATER extends ParticleUpdater
  >(particles: Particles<
      PARTICLE,
      COLOR_UPDATER,
      OPACITY_UPDATER,
      SCALE_UPDATER,
      ACC_SPEED_UPDATER,
      ACC_ANGLE_UPDATER,
      SPIN_UPDATER
    >): ParticleAttribute;
  (particles: Particles): ParticleAttribute;
}
declare enum ParticleType {
  POINT = 'point',
  IMAGE = 'image',
}
declare enum ParticleEmitterShape {
  RECTANGLE = 'rectangle',
  CIRCLE = 'circle',
  ELLIPSE = 'ellipse',
  ANNULUS = 'annulus',
}
declare enum DistributionType {
  UNIFORM = 0,
  GAUSSIAN = 1,
}
declare enum ParticleUpdater {
  NONE = 'none',
  RANDOM = 'random',
  CURVE = 'curve',
}
declare type SizeT<T> = import('../api/arkui/Graphics').SizeT<T>;
declare type PositionT<T> = import('../api/arkui/Graphics').PositionT<T>;
declare class ParticleAttribute extends CommonMethod<ParticleAttribute> {
  disturbanceFields(fields: Array<DisturbanceFieldOptions>): ParticleAttribute;
  emitter(value : Array<EmitterProperty>) : ParticleAttribute;
}
declare const Particle: ParticleInterface;
declare interface DisturbanceFieldOptions {
  strength?: number;
  shape?: DisturbanceFieldShape;
  size?: SizeT<number>;
  position?: PositionT<number>;
  feather?: number;
  noiseScale?: number;
  noiseFrequency?: number;
  noiseAmplitude?: number;
}
declare enum DisturbanceFieldShape {
  RECT,
  CIRCLE,
  ELLIPSE
}
declare interface ParticleAnnulusRegion {
  center?: PositionT<LengthMetrics>,
  outerRadius: LengthMetrics,
  innerRadius: LengthMetrics,
  startAngle?: number,
  endAngle?: number,
}