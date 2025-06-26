.class public final Lj;
.super Ljm7;
.source "kotlin-style lambda group"

# interfaces
.implements Lel7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Lel7<",
        "Lyj7;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lj;

.field public static final g:Lj;


# instance fields
.field public final synthetic e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lj;-><init>(I)V

    sput-object v0, Lj;->f:Lj;

    new-instance v0, Lj;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lj;-><init>(I)V

    sput-object v0, Lj;->g:Lj;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lj;->e:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lj;->e:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1
    sget-object v0, Lyj7;->a:Lyj7;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    throw v0

    .line 3
    :cond_1
    sget-object v0, Lyj7;->a:Lyj7;

    return-object v0
.end method
