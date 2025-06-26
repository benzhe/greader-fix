.class public Lcom/thebluealliance/spectrum/internal/ColorItem;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public e:Lorg/greenrobot/eventbus/EventBus;

.field public f:Landroid/widget/ImageView;

.field public g:I

.field public h:Z

.field public i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/thebluealliance/spectrum/internal/ColorItem;->h:Z

    .line 11
    iput p1, p0, Lcom/thebluealliance/spectrum/internal/ColorItem;->i:I

    .line 12
    invoke-virtual {p0}, Lcom/thebluealliance/spectrum/internal/ColorItem;->c()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZLorg/greenrobot/eventbus/EventBus;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/thebluealliance/spectrum/internal/ColorItem;->h:Z

    .line 3
    iput p1, p0, Lcom/thebluealliance/spectrum/internal/ColorItem;->i:I

    .line 4
    iput p2, p0, Lcom/thebluealliance/spectrum/internal/ColorItem;->g:I

    .line 5
    iput-boolean p3, p0, Lcom/thebluealliance/spectrum/internal/ColorItem;->h:Z

    .line 6
    iput-object p4, p0, Lcom/thebluealliance/spectrum/internal/ColorItem;->e:Lorg/greenrobot/eventbus/EventBus;

    .line 7
    invoke-virtual {p0}, Lcom/thebluealliance/spectrum/internal/ColorItem;->c()V

    .line 8
    iget-boolean p1, p0, Lcom/thebluealliance/spectrum/internal/ColorItem;->h:Z

    invoke-virtual {p0, p1}, Lcom/thebluealliance/spectrum/internal/ColorItem;->setChecked(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/thebluealliance/spectrum/internal/ColorItem;->h:Z

    .line 15
    iput p1, p0, Lcom/thebluealliance/spectrum/internal/ColorItem;->i:I

    .line 16
    invoke-virtual {p0}, Lcom/thebluealliance/spectrum/internal/ColorItem;->c()V

    return-void
.end method

.method public static synthetic a(Lcom/thebluealliance/spectrum/internal/ColorItem;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/thebluealliance/spectrum/internal/ColorItem;->setItemCheckmarkAttributes(F)V

    return-void
.end method

.method private setItemCheckmarkAttributes(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/thebluealliance/spectrum/internal/ColorItem;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2
    iget-object v0, p0, Lcom/thebluealliance/spectrum/internal/ColorItem;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 3
    iget-object v0, p0, Lcom/thebluealliance/spectrum/internal/ColorItem;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method


# virtual methods
.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 3
    iget v1, p0, Lcom/thebluealliance/spectrum/internal/ColorItem;->i:I

    if-eqz v1, :cond_1

    .line 4
    iget v2, p0, Lcom/thebluealliance/spectrum/internal/ColorItem;->g:I

    invoke-static {v2}, Ln56;->k1(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    goto :goto_0

    :cond_0
    const/high16 v2, -0x1000000

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 5
    :cond_1
    iget v1, p0, Lcom/thebluealliance/spectrum/internal/ColorItem;->g:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-object v0
.end method

.method public final c()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/thebluealliance/spectrum/internal/ColorItem;->d()V

    .line 2
    iget-object v0, p0, Lcom/thebluealliance/spectrum/internal/ColorItem;->e:Lorg/greenrobot/eventbus/EventBus;

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/thebluealliance/spectrum/R$layout;->color_item:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 5
    sget v0, Lcom/thebluealliance/spectrum/R$id;->selected_checkmark:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/thebluealliance/spectrum/internal/ColorItem;->f:Landroid/widget/ImageView;

    .line 6
    iget v1, p0, Lcom/thebluealliance/spectrum/internal/ColorItem;->g:I

    invoke-static {v1}, Ln56;->k1(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/high16 v1, -0x1000000

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v1, -0x1000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 4
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    iget v2, p0, Lcom/thebluealliance/spectrum/internal/ColorItem;->g:I

    invoke-static {v2}, Ln56;->V0(I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 5
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 6
    invoke-virtual {p0}, Lcom/thebluealliance/spectrum/internal/ColorItem;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/thebluealliance/spectrum/internal/ColorItem;->e:Lorg/greenrobot/eventbus/EventBus;

    new-instance v0, Lr27;

    iget v1, p0, Lcom/thebluealliance/spectrum/internal/ColorItem;->g:I

    invoke-direct {v0, v1}, Lr27;-><init>(I)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onSelectedColorChanged(Lr27;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 1
    iget p1, p1, Lr27;->a:I

    .line 2
    iget v0, p0, Lcom/thebluealliance/spectrum/internal/ColorItem;->g:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/thebluealliance/spectrum/internal/ColorItem;->setChecked(Z)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/thebluealliance/spectrum/internal/ColorItem;->h:Z

    .line 2
    iput-boolean p1, p0, Lcom/thebluealliance/spectrum/internal/ColorItem;->h:Z

    const-wide/16 v1, 0xfa

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0, v4}, Lcom/thebluealliance/spectrum/internal/ColorItem;->setItemCheckmarkAttributes(F)V

    .line 4
    iget-object p1, p0, Lcom/thebluealliance/spectrum/internal/ColorItem;->f:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/thebluealliance/spectrum/internal/ColorItem;->f:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/thebluealliance/spectrum/internal/ColorItem$a;

    invoke-direct {v0, p0}, Lcom/thebluealliance/spectrum/internal/ColorItem$a;-><init>(Lcom/thebluealliance/spectrum/internal/ColorItem;)V

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_0
    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/thebluealliance/spectrum/internal/ColorItem;->f:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    invoke-direct {p0, v5}, Lcom/thebluealliance/spectrum/internal/ColorItem;->setItemCheckmarkAttributes(F)V

    .line 14
    iget-object p1, p0, Lcom/thebluealliance/spectrum/internal/ColorItem;->f:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 16
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 17
    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 18
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/thebluealliance/spectrum/internal/ColorItem$b;

    invoke-direct {v0, p0}, Lcom/thebluealliance/spectrum/internal/ColorItem$b;-><init>(Lcom/thebluealliance/spectrum/internal/ColorItem;)V

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/thebluealliance/spectrum/internal/ColorItem;->f:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 22
    invoke-direct {p0, v5}, Lcom/thebluealliance/spectrum/internal/ColorItem;->setItemCheckmarkAttributes(F)V

    :goto_1
    return-void
.end method

.method public setOutlineWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/thebluealliance/spectrum/internal/ColorItem;->i:I

    .line 2
    invoke-virtual {p0}, Lcom/thebluealliance/spectrum/internal/ColorItem;->d()V

    return-void
.end method
