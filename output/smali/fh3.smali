.class public final Lfh3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldh3;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Lal3;


# direct methods
.method public constructor <init>(Lch3;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lch3;->P0:Lal3;

    iput-object p1, p0, Lfh3;->c:Lal3;

    const/16 v0, 0xc

    .line 3
    invoke-virtual {p1, v0}, Lal3;->h(I)V

    .line 4
    invoke-virtual {p1}, Lal3;->o()I

    move-result v0

    iput v0, p0, Lfh3;->a:I

    .line 5
    invoke-virtual {p1}, Lal3;->o()I

    move-result p1

    iput p1, p0, Lfh3;->b:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget v0, p0, Lfh3;->a:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lfh3;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lfh3;->c:Lal3;

    invoke-virtual {v0}, Lal3;->o()I

    move-result v0

    :cond_0
    return v0
.end method

.method public final c()I
    .locals 1

    .line 1
    iget v0, p0, Lfh3;->b:I

    return v0
.end method
