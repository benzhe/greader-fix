.class public Lcom/thebluealliance/spectrum/internal/ColorItem$a;
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
    iput-object p1, p0, Lcom/thebluealliance/spectrum/internal/ColorItem$a;->a:Lcom/thebluealliance/spectrum/internal/ColorItem;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/thebluealliance/spectrum/internal/ColorItem$a;->a:Lcom/thebluealliance/spectrum/internal/ColorItem;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/thebluealliance/spectrum/internal/ColorItem;->a(Lcom/thebluealliance/spectrum/internal/ColorItem;F)V

    return-void
.end method
