.class public final synthetic Lo63;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:[I

.field public static final synthetic b:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lg73;->values()[Lg73;

    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lo63;->b:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lg73;->n:Lg73;

    const/4 v2, 0x7

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lo63;->b:[I

    sget-object v3, Lg73;->p:Lg73;

    const/16 v3, 0x9

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lo63;->b:[I

    sget-object v4, Lg73;->m:Lg73;

    const/4 v4, 0x6

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 2
    :catch_2
    invoke-static {}, Ln63;->values()[Ln63;

    const/4 v3, 0x4

    new-array v3, v3, [I

    sput-object v3, Lo63;->a:[I

    :try_start_3
    aput v1, v3, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lo63;->a:[I

    aput v0, v3, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lo63;->a:[I

    const/4 v1, 0x0

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
