.class public Lf17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/r0adkll/slidr/widget/SliderPanel;


# direct methods
.method public constructor <init>(Lcom/r0adkll/slidr/widget/SliderPanel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf17;->e:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf17;->e:Lcom/r0adkll/slidr/widget/SliderPanel;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    .line 2
    iput v1, v0, Lcom/r0adkll/slidr/widget/SliderPanel;->f:I

    return-void
.end method
