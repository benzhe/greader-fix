.class public Lnet/simonvt/menudrawer/BuildLayerFrameLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->onSizeChanged(IIII)V
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
    iput-object p1, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout$a;->e:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout$a;->e:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->e:Z

    .line 3
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
