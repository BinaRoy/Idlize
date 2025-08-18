/**
 * Test file for literal union types
 */

declare type HorizontalAlign = "left" | "center" | "right";

interface TestComponent {
  align(value: HorizontalAlign): TestComponent;
}
