.class public final Lyl3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:I

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:F

.field public final synthetic i:Lrl3;


# direct methods
.method public constructor <init>(Lrl3;IIIF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyl3;->i:Lrl3;

    iput p2, p0, Lyl3;->e:I

    iput p3, p0, Lyl3;->f:I

    iput p4, p0, Lyl3;->g:I

    iput p5, p0, Lyl3;->h:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lyl3;->i:Lrl3;

    .line 2
    iget-object v0, v0, Lrl3;->b:Lsl3;

    .line 3
    iget v1, p0, Lyl3;->e:I

    iget v2, p0, Lyl3;->f:I

    check-cast v0, Lcv0;

    .line 4
    iget-object v0, v0, Lcv0;->o:Lmv0;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, v1, v2}, Lmv0;->g(II)V

    :cond_0
    return-void
.end method
