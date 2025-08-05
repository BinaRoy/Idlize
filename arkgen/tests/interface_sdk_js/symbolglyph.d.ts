interface SymbolGlyphInterface {
  (value?: Resource): SymbolGlyphAttribute;
}
declare enum SymbolRenderingStrategy {
  SINGLE = 0,
  MULTIPLE_COLOR = 1,
  MULTIPLE_OPACITY = 2,
}
declare enum SymbolEffectStrategy {
  NONE = 0,
  SCALE = 1,
  HIERARCHICAL = 2,
}
declare enum EffectDirection {
  DOWN = 0,
  UP = 1,
}
declare enum EffectScope {
  LAYER = 0,
  WHOLE = 1,
}
declare enum EffectFillStyle {
  CUMULATIVE = 0,
  ITERATIVE = 1,
}
declare class SymbolEffect {
}
declare class ScaleSymbolEffect extends SymbolEffect {
  constructor(scope?: EffectScope, direction?: EffectDirection);
  scope?: EffectScope;
  direction?: EffectDirection;
}
declare class HierarchicalSymbolEffect extends SymbolEffect {
  constructor(fillStyle?: EffectFillStyle);
  fillStyle?: EffectFillStyle;
}
declare class AppearSymbolEffect extends SymbolEffect {
  constructor(scope?: EffectScope);
  scope?: EffectScope;
}
declare class DisappearSymbolEffect extends SymbolEffect {
  constructor(scope?: EffectScope);
  scope?: EffectScope;
}
declare class BounceSymbolEffect extends SymbolEffect {
  constructor(scope?: EffectScope, direction?: EffectDirection);
  scope?: EffectScope;
  direction?: EffectDirection;
}
declare class ReplaceSymbolEffect extends SymbolEffect {
  constructor(scope?: EffectScope);
  scope?: EffectScope;
}
declare class PulseSymbolEffect extends SymbolEffect {
}
declare class DisableSymbolEffect extends SymbolEffect {
  constructor(scope?: EffectScope);
  scope?: EffectScope;
}
declare class QuickReplaceSymbolEffect extends SymbolEffect {
  constructor(scope?: EffectScope);
  scope?: EffectScope;
}
declare class SymbolGlyphAttribute extends CommonMethod<SymbolGlyphAttribute> {
  fontSize(value: number | string | Resource): SymbolGlyphAttribute;
  fontColor(value: Array<ResourceColor>): SymbolGlyphAttribute;
  shaderStyle(shaders: Array<ShaderStyle>): SymbolGlyphAttribute;
  fontWeight(value: number | FontWeight | string): SymbolGlyphAttribute;
  effectStrategy(value: SymbolEffectStrategy): SymbolGlyphAttribute;
  renderingStrategy(value: SymbolRenderingStrategy): SymbolGlyphAttribute;
  symbolEffect(symbolEffect: SymbolEffect, isActive?: boolean): SymbolGlyphAttribute;
  symbolEffect(symbolEffect: SymbolEffect, triggerValue?: number): SymbolGlyphAttribute;
  minFontScale(scale: Optional<number | Resource>): SymbolGlyphAttribute;
  maxFontScale(scale: Optional<number | Resource>): SymbolGlyphAttribute;
  symbolShadow(shadow: Optional<ShadowOptions>): SymbolGlyphAttribute;
}
declare const SymbolGlyph: SymbolGlyphInterface;
declare const SymbolGlyphInstance: SymbolGlyphAttribute;