import { ConfigTypeInfer } from "@idlizer/core";
declare const KnownReferencesSchema: {
    schema: Record<string, {
        validate: (x: unknown) => {
            box: import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                readonly AttributeModifier: string;
                readonly AttributeUpdater: string;
            }>;
            success(): boolean;
            unwrap(message?: string | undefined): {
                readonly AttributeModifier: string;
                readonly AttributeUpdater: string;
            };
            error(): string;
            get(): import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                readonly AttributeModifier: string;
                readonly AttributeUpdater: string;
            }>;
            or<U>(x: U): {
                box: import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                    readonly AttributeModifier: string;
                    readonly AttributeUpdater: string;
                } | U>;
                success(): boolean;
                unwrap(message?: string | undefined): {
                    readonly AttributeModifier: string;
                    readonly AttributeUpdater: string;
                } | U;
                error(): string;
                get(): import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                    readonly AttributeModifier: string;
                    readonly AttributeUpdater: string;
                } | U>;
                or<U_1>(x: U_1): {
                    box: import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                        readonly AttributeModifier: string;
                        readonly AttributeUpdater: string;
                    } | U | U_1>;
                    success(): boolean;
                    unwrap(message?: string | undefined): {
                        readonly AttributeModifier: string;
                        readonly AttributeUpdater: string;
                    } | U | U_1;
                    error(): string;
                    get(): import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                        readonly AttributeModifier: string;
                        readonly AttributeUpdater: string;
                    } | U | U_1>;
                    or<U_2>(x: U_2): {
                        box: import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                            readonly AttributeModifier: string;
                            readonly AttributeUpdater: string;
                        } | U | U_1 | U_2>;
                        success(): boolean;
                        unwrap(message?: string | undefined): {
                            readonly AttributeModifier: string;
                            readonly AttributeUpdater: string;
                        } | U | U_1 | U_2;
                        error(): string;
                        get(): import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                            readonly AttributeModifier: string;
                            readonly AttributeUpdater: string;
                        } | U | U_1 | U_2>;
                        or<U_3>(x: U_3): {
                            box: import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                                readonly AttributeModifier: string;
                                readonly AttributeUpdater: string;
                            } | U | U_1 | U_2 | U_3>;
                            success(): boolean;
                            unwrap(message?: string | undefined): {
                                readonly AttributeModifier: string;
                                readonly AttributeUpdater: string;
                            } | U | U_1 | U_2 | U_3;
                            error(): string;
                            get(): import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                                readonly AttributeModifier: string;
                                readonly AttributeUpdater: string;
                            } | U | U_1 | U_2 | U_3>;
                            or<U_4>(x: U_4): {
                                box: import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                                    readonly AttributeModifier: string;
                                    readonly AttributeUpdater: string;
                                } | U | U_1 | U_2 | U_3 | U_4>;
                                success(): boolean;
                                unwrap(message?: string | undefined): {
                                    readonly AttributeModifier: string;
                                    readonly AttributeUpdater: string;
                                } | U | U_1 | U_2 | U_3 | U_4;
                                error(): string;
                                get(): import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                                    readonly AttributeModifier: string;
                                    readonly AttributeUpdater: string;
                                } | U | U_1 | U_2 | U_3 | U_4>;
                                or<U_5>(x: U_5): {
                                    box: import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                                        readonly AttributeModifier: string;
                                        readonly AttributeUpdater: string;
                                    } | U | U_1 | U_2 | U_3 | U_4 | U_5>;
                                    success(): boolean;
                                    unwrap(message?: string | undefined): {
                                        readonly AttributeModifier: string;
                                        readonly AttributeUpdater: string;
                                    } | U | U_1 | U_2 | U_3 | U_4 | U_5;
                                    error(): string;
                                    get(): import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                                        readonly AttributeModifier: string;
                                        readonly AttributeUpdater: string;
                                    } | U | U_1 | U_2 | U_3 | U_4 | U_5>;
                                    or<U_6>(x: U_6): {
                                        box: import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                                            readonly AttributeModifier: string;
                                            readonly AttributeUpdater: string;
                                        } | U | U_1 | U_2 | U_3 | U_4 | U_5 | U_6>;
                                        success(): boolean;
                                        unwrap(message?: string | undefined): {
                                            readonly AttributeModifier: string;
                                            readonly AttributeUpdater: string;
                                        } | U | U_1 | U_2 | U_3 | U_4 | U_5 | U_6;
                                        error(): string;
                                        get(): import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                                            readonly AttributeModifier: string;
                                            readonly AttributeUpdater: string;
                                        } | U | U_1 | U_2 | U_3 | U_4 | U_5 | U_6>;
                                        or<U_7>(x: U_7): {
                                            box: import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                                                readonly AttributeModifier: string;
                                                readonly AttributeUpdater: string;
                                            } | U | U_1 | U_2 | U_3 | U_4 | U_5 | U_6 | U_7>;
                                            success(): boolean;
                                            unwrap(message?: string | undefined): {
                                                readonly AttributeModifier: string;
                                                readonly AttributeUpdater: string;
                                            } | U | U_1 | U_2 | U_3 | U_4 | U_5 | U_6 | U_7;
                                            error(): string;
                                            get(): import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                                                readonly AttributeModifier: string;
                                                readonly AttributeUpdater: string;
                                            } | U | U_1 | U_2 | U_3 | U_4 | U_5 | U_6 | U_7>;
                                            or<U_8>(x: U_8): {
                                                box: import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                                                    readonly AttributeModifier: string;
                                                    readonly AttributeUpdater: string;
                                                } | U | U_1 | U_2 | U_3 | U_4 | U_5 | U_6 | U_7 | U_8>;
                                                success(): boolean;
                                                unwrap(message?: string | undefined): {
                                                    readonly AttributeModifier: string;
                                                    readonly AttributeUpdater: string;
                                                } | U | U_1 | U_2 | U_3 | U_4 | U_5 | U_6 | U_7 | U_8;
                                                error(): string;
                                                get(): import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                                                    readonly AttributeModifier: string;
                                                    readonly AttributeUpdater: string;
                                                } | U | U_1 | U_2 | U_3 | U_4 | U_5 | U_6 | U_7 | U_8>;
                                                or<U_9>(x: U_9): {
                                                    box: import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                                                        readonly AttributeModifier: string;
                                                        readonly AttributeUpdater: string;
                                                    } | U | U_1 | U_2 | U_3 | U_4 | U_5 | U_6 | U_7 | U_8 | U_9>;
                                                    success(): boolean;
                                                    unwrap(message?: string | undefined): {
                                                        readonly AttributeModifier: string;
                                                        readonly AttributeUpdater: string;
                                                    } | U | U_1 | U_2 | U_3 | U_4 | U_5 | U_6 | U_7 | U_8 | U_9;
                                                    error(): string;
                                                    get(): import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                                                        readonly AttributeModifier: string;
                                                        readonly AttributeUpdater: string;
                                                    } | U | U_1 | U_2 | U_3 | U_4 | U_5 | U_6 | U_7 | U_8 | U_9>;
                                                    or<U_10>(x: U_10): any;
                                                };
                                            };
                                        };
                                    };
                                };
                            };
                        };
                    };
                };
            };
        };
        printSchema: () => import("@idlizer/core/build/lib/src/configDescriber").JsonSchemaNode;
        $: import("@idlizer/core/build/lib/src/configDescriber").ConfigDescriberBaseConfig;
        onMerge(strategy: "replace" | "merge"): any;
    }>;
    validate: (x: unknown) => {
        box: import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
            readonly AttributeModifier: string;
            readonly AttributeUpdater: string;
        }>;
        success(): boolean;
        unwrap(message?: string | undefined): {
            readonly AttributeModifier: string;
            readonly AttributeUpdater: string;
        };
        error(): string;
        get(): import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
            readonly AttributeModifier: string;
            readonly AttributeUpdater: string;
        }>;
        or<U>(x: U): {
            box: import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                readonly AttributeModifier: string;
                readonly AttributeUpdater: string;
            } | U>;
            success(): boolean;
            unwrap(message?: string | undefined): {
                readonly AttributeModifier: string;
                readonly AttributeUpdater: string;
            } | U;
            error(): string;
            get(): import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                readonly AttributeModifier: string;
                readonly AttributeUpdater: string;
            } | U>;
            or<U_1>(x: U_1): {
                box: import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                    readonly AttributeModifier: string;
                    readonly AttributeUpdater: string;
                } | U | U_1>;
                success(): boolean;
                unwrap(message?: string | undefined): {
                    readonly AttributeModifier: string;
                    readonly AttributeUpdater: string;
                } | U | U_1;
                error(): string;
                get(): import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                    readonly AttributeModifier: string;
                    readonly AttributeUpdater: string;
                } | U | U_1>;
                or<U_2>(x: U_2): {
                    box: import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                        readonly AttributeModifier: string;
                        readonly AttributeUpdater: string;
                    } | U | U_1 | U_2>;
                    success(): boolean;
                    unwrap(message?: string | undefined): {
                        readonly AttributeModifier: string;
                        readonly AttributeUpdater: string;
                    } | U | U_1 | U_2;
                    error(): string;
                    get(): import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                        readonly AttributeModifier: string;
                        readonly AttributeUpdater: string;
                    } | U | U_1 | U_2>;
                    or<U_3>(x: U_3): {
                        box: import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                            readonly AttributeModifier: string;
                            readonly AttributeUpdater: string;
                        } | U | U_1 | U_2 | U_3>;
                        success(): boolean;
                        unwrap(message?: string | undefined): {
                            readonly AttributeModifier: string;
                            readonly AttributeUpdater: string;
                        } | U | U_1 | U_2 | U_3;
                        error(): string;
                        get(): import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                            readonly AttributeModifier: string;
                            readonly AttributeUpdater: string;
                        } | U | U_1 | U_2 | U_3>;
                        or<U_4>(x: U_4): {
                            box: import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                                readonly AttributeModifier: string;
                                readonly AttributeUpdater: string;
                            } | U | U_1 | U_2 | U_3 | U_4>;
                            success(): boolean;
                            unwrap(message?: string | undefined): {
                                readonly AttributeModifier: string;
                                readonly AttributeUpdater: string;
                            } | U | U_1 | U_2 | U_3 | U_4;
                            error(): string;
                            get(): import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                                readonly AttributeModifier: string;
                                readonly AttributeUpdater: string;
                            } | U | U_1 | U_2 | U_3 | U_4>;
                            or<U_5>(x: U_5): {
                                box: import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                                    readonly AttributeModifier: string;
                                    readonly AttributeUpdater: string;
                                } | U | U_1 | U_2 | U_3 | U_4 | U_5>;
                                success(): boolean;
                                unwrap(message?: string | undefined): {
                                    readonly AttributeModifier: string;
                                    readonly AttributeUpdater: string;
                                } | U | U_1 | U_2 | U_3 | U_4 | U_5;
                                error(): string;
                                get(): import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                                    readonly AttributeModifier: string;
                                    readonly AttributeUpdater: string;
                                } | U | U_1 | U_2 | U_3 | U_4 | U_5>;
                                or<U_6>(x: U_6): {
                                    box: import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                                        readonly AttributeModifier: string;
                                        readonly AttributeUpdater: string;
                                    } | U | U_1 | U_2 | U_3 | U_4 | U_5 | U_6>;
                                    success(): boolean;
                                    unwrap(message?: string | undefined): {
                                        readonly AttributeModifier: string;
                                        readonly AttributeUpdater: string;
                                    } | U | U_1 | U_2 | U_3 | U_4 | U_5 | U_6;
                                    error(): string;
                                    get(): import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                                        readonly AttributeModifier: string;
                                        readonly AttributeUpdater: string;
                                    } | U | U_1 | U_2 | U_3 | U_4 | U_5 | U_6>;
                                    or<U_7>(x: U_7): {
                                        box: import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                                            readonly AttributeModifier: string;
                                            readonly AttributeUpdater: string;
                                        } | U | U_1 | U_2 | U_3 | U_4 | U_5 | U_6 | U_7>;
                                        success(): boolean;
                                        unwrap(message?: string | undefined): {
                                            readonly AttributeModifier: string;
                                            readonly AttributeUpdater: string;
                                        } | U | U_1 | U_2 | U_3 | U_4 | U_5 | U_6 | U_7;
                                        error(): string;
                                        get(): import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                                            readonly AttributeModifier: string;
                                            readonly AttributeUpdater: string;
                                        } | U | U_1 | U_2 | U_3 | U_4 | U_5 | U_6 | U_7>;
                                        or<U_8>(x: U_8): {
                                            box: import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                                                readonly AttributeModifier: string;
                                                readonly AttributeUpdater: string;
                                            } | U | U_1 | U_2 | U_3 | U_4 | U_5 | U_6 | U_7 | U_8>;
                                            success(): boolean;
                                            unwrap(message?: string | undefined): {
                                                readonly AttributeModifier: string;
                                                readonly AttributeUpdater: string;
                                            } | U | U_1 | U_2 | U_3 | U_4 | U_5 | U_6 | U_7 | U_8;
                                            error(): string;
                                            get(): import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                                                readonly AttributeModifier: string;
                                                readonly AttributeUpdater: string;
                                            } | U | U_1 | U_2 | U_3 | U_4 | U_5 | U_6 | U_7 | U_8>;
                                            or<U_9>(x: U_9): {
                                                box: import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                                                    readonly AttributeModifier: string;
                                                    readonly AttributeUpdater: string;
                                                } | U | U_1 | U_2 | U_3 | U_4 | U_5 | U_6 | U_7 | U_8 | U_9>;
                                                success(): boolean;
                                                unwrap(message?: string | undefined): {
                                                    readonly AttributeModifier: string;
                                                    readonly AttributeUpdater: string;
                                                } | U | U_1 | U_2 | U_3 | U_4 | U_5 | U_6 | U_7 | U_8 | U_9;
                                                error(): string;
                                                get(): import("@idlizer/core/build/lib/src/configDescriber").ValidationResult<{
                                                    readonly AttributeModifier: string;
                                                    readonly AttributeUpdater: string;
                                                } | U | U_1 | U_2 | U_3 | U_4 | U_5 | U_6 | U_7 | U_8 | U_9>;
                                                or<U_10>(x: U_10): any;
                                            };
                                        };
                                    };
                                };
                            };
                        };
                    };
                };
            };
        };
    };
    printSchema: () => import("@idlizer/core/build/lib/src/configDescriber").JsonSchemaNode;
    $: import("@idlizer/core/build/lib/src/configDescriber").ConfigDescriberBaseConfig;
    onMerge(strategy: "replace" | "merge"): any;
};
export type KnownReferencesType = ConfigTypeInfer<typeof KnownReferencesSchema>;
export declare let referenceNames: KnownReferencesType | undefined;
export declare function loadKnownReferences(path: string): void;
export declare function getReferenceTo(key: keyof KnownReferencesType): string;
export {};
//# sourceMappingURL=knownReferences.d.ts.map