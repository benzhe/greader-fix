.class public abstract Lb25;
.super Lly4;
.source "SourceFile"

# interfaces
.implements Lny4;


# instance fields
.field public final b:Lj25;

.field public c:Z


# direct methods
.method public constructor <init>(Lj25;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lj25;->j:Lrx4;

    .line 2
    invoke-direct {p0, v0}, Lly4;-><init>(Lrx4;)V

    .line 3
    iput-object p1, p0, Lb25;->b:Lj25;

    .line 4
    iget v0, p1, Lj25;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lj25;->o:I

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lb25;->c:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    .line 3
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()V
    .locals 3

    iget-boolean v0, p0, Lb25;->c:Z

    if-nez v0, :cond_0

    .line 1
    invoke-virtual {p0}, Lb25;->h()Z

    iget-object v0, p0, Lb25;->b:Lj25;

    .line 2
    iget v1, v0, Lj25;->p:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lj25;->p:I

    .line 3
    iput-boolean v2, p0, Lb25;->c:Z

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract h()Z
.end method
