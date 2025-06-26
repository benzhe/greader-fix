.class public final Li;
.super Ljm7;
.source "kotlin-style lambda group"

# interfaces
.implements Lpl7;


# static fields
.field public static final f:Li;

.field public static final g:Li;


# instance fields
.field public final synthetic e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Li;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li;-><init>(I)V

    sput-object v0, Li;->f:Li;

    new-instance v0, Li;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Li;-><init>(I)V

    sput-object v0, Li;->g:Li;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Li;->e:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Li;->e:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    return-object v1

    .line 2
    :cond_0
    throw v1

    .line 3
    :cond_1
    check-cast p1, Ljava/lang/Throwable;

    return-object v1
.end method
