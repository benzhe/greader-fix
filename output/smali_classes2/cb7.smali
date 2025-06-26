.class public Lcb7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lfb7;

.field public static final b:Ldb7;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lfb7;

    const-string v1, ""

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v0, v1, v2, v3}, Lfb7;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcb7;->a:Lfb7;

    .line 2
    new-instance v0, Ldb7;

    invoke-direct {v0, v2, v3}, Ldb7;-><init>(J)V

    sput-object v0, Lcb7;->b:Ldb7;

    return-void
.end method

.method public constructor <init>(Lfb7;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcb7;->a:Lfb7;

    if-ne p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "nope"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
