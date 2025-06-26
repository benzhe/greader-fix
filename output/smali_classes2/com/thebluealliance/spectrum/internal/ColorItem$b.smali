.class public Lcom/thebluealliance/spectrum/internal/ColorItem$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/thebluealliance/spectrum/internal/ColorItem;->setChecked(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/thebluealliance/spectrum/internal/ColorItem;


# direct methods
.method public constructor <init>(Lcom/thebluealliance/spectrum/internal/ColorItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/thebluealliance/spectrum/internal/ColorItem$b;->a:Lcom/thebluealliance/spectrum/internal/ColorItem;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/thebluealliance/spectrum/internal/ColorItem$b;->a:Lcom/thebluealliance/spectrum/internal/ColorItem;

    .line 2
    iget-object p1, p1, Lcom/thebluealliance/spectrum/internal/ColorItem;->f:Landroid/widget/ImageView;

    const/4 v0, 0x4

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/thebluealliance/spectrum/internal/ColorItem$b;->a:Lcom/thebluealliance/spectrum/internal/ColorItem;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/thebluealliance/spectrum/internal/ColorItem;->a(Lcom/thebluealliance/spectrum/internal/ColorItem;F)V

    return-void
.end method
