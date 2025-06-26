.class public final Loy6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loy6;->e:Landroid/content/Context;

    iput p2, p0, Loy6;->f:I

    iput-object p3, p0, Loy6;->g:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    iget-object v0, p0, Loy6;->e:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v1, p0, Loy6;->f:I

    iget-object v2, p0, Loy6;->g:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    .line 3
    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v4

    .line 5
    instance-of v5, v4, Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 6
    check-cast v4, Landroid/widget/LinearLayout;

    .line 7
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2

    .line 8
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 9
    instance-of v7, v5, Landroid/widget/TextView;

    if-eqz v7, :cond_2

    .line 10
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    instance-of v7, v7, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    move-object v6, v5

    :cond_2
    :goto_0
    move-object v9, v6

    move-object v6, v4

    move-object v4, v9

    goto :goto_1

    :cond_3
    move-object v4, v6

    :goto_1
    if-eqz v6, :cond_5

    if-nez v4, :cond_4

    goto :goto_2

    .line 11
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 12
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v5, 0x10

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v4, 0x41c80000    # 25.0f

    .line 13
    invoke-static {v0, v4}, Ln56;->o0(Landroid/content/Context;F)I

    move-result v4

    const/high16 v7, 0x41700000    # 15.0f

    .line 14
    invoke-static {v0, v7}, Ln56;->o0(Landroid/content/Context;F)I

    move-result v7

    .line 15
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 16
    invoke-virtual {v8, v3, v3, v7, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 17
    iput v5, v8, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 18
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 20
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 22
    invoke-virtual {v6, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_3

    .line 23
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x3

    invoke-static {v1}, Ljy6;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "failed to create image toast layout, using usual toast"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEBUG"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    :goto_3
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void
.end method
