.class public Lnet/simonvt/menudrawer/BuildLayerFrameLayout$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;


# direct methods
.method public constructor <init>(Lnet/simonvt/menudrawer/BuildLayerFrameLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout$b;->e:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout$b;->e:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    .line 2
    iget-boolean v1, v0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->g:Z

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayerType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout$b;->e:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    .line 5
    iget-boolean v0, v0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->h:Z

    if-eqz v0, :cond_1

    .line 6
    :cond_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout$b;->e:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    const/4 v2, 0x0

    .line 7
    iput-boolean v2, v0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->h:Z

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v1, v3}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 9
    iget-object v0, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout$b;->e:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->buildLayer()V

    .line 10
    iget-object v0, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout$b;->e:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method
