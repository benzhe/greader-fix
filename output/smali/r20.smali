.class public final Lr20;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Lm20;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lm20;

    .line 1
    new-instance v1, Lq20;

    const-string v2, "0\u0082\u0004C0\u0082\u0003+\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00c2\u00e0\u0087FdJ0\u008d0"

    .line 2
    invoke-static {v2}, Lm20;->l0(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lq20;-><init>([B)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ls20;

    const-string v2, "0\u0082\u0004\u00a80\u0082\u0003\u0090\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00d5\u0085\u00b8l}\u00d3N\u00f50"

    .line 3
    invoke-static {v2}, Lm20;->l0(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ls20;-><init>([B)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lr20;->a:[Lm20;

    return-void
.end method
