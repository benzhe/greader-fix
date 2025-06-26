.class public final Lh;
.super Ljm7;
.source "kotlin-style lambda group"

# interfaces
.implements Lpl7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Lpl7<",
        "Ljava/lang/Throwable;",
        "Lyj7;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lh;

.field public static final g:Lh;


# instance fields
.field public final synthetic e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lh;-><init>(I)V

    sput-object v0, Lh;->f:Lh;

    new-instance v0, Lh;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lh;-><init>(I)V

    sput-object v0, Lh;->g:Lh;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lh;->e:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lh;->e:I

    const-string v1, "it"

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    .line 2
    invoke-static {p1, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    sget-object p1, Lyj7;->a:Lyj7;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1

    .line 6
    :cond_1
    check-cast p1, Ljava/lang/Throwable;

    .line 7
    invoke-static {p1, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    sget-object p1, Lyj7;->a:Lyj7;

    return-object p1
.end method
