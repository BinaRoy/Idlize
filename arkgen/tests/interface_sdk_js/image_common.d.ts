declare enum ImageAnalyzerType {
  SUBJECT = 0,
  TEXT,
  OBJECT_LOOKUP,
}
declare class ImageAnalyzerController {
  constructor();
  getImageAnalyzerSupportTypes(): ImageAnalyzerType[];
}
declare interface ImageAnalyzerConfig {
  types: ImageAnalyzerType[];
}
declare interface ImageAIOptions {
  types?: ImageAnalyzerType[];
  aiController?: ImageAnalyzerController;
}