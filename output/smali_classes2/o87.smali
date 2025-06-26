.class public final Lo87;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo87$a;,
        Lo87$b;
    }
.end annotation


# static fields
.field public static final synthetic a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    new-array v1, v0, [B

    const/4 v2, 0x1

    const-string v3, "offset must be >= 0"

    .line 1
    invoke-static {v2, v3}, Lc50;->t(ZLjava/lang/Object;)V

    const-string v3, "length must be >= 0"

    .line 2
    invoke-static {v2, v3}, Lc50;->t(ZLjava/lang/Object;)V

    add-int v3, v0, v0

    .line 3
    array-length v4, v1

    if-gt v3, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v2, "offset + length exceeds array boundary"

    invoke-static {v0, v2}, Lc50;->t(ZLjava/lang/Object;)V

    const-string v0, "bytes"

    .line 4
    invoke-static {v1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
