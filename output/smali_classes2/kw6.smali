.class public Lkw6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkw6$b;
    }
.end annotation


# instance fields
.field public a:Lkx6;

.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Z

.field public i:Z

.field public j:I

.field public k:Z

.field public l:I

.field public m:I

.field public n:Z

.field public o:Z

.field public p:I

.field public q:I

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Z


# direct methods
.method public constructor <init>(Lkw6$b;Lkw6$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p1, Lkw6$b;->a:Lkx6;

    iput-object p2, p0, Lkw6;->a:Lkx6;

    .line 3
    iget-boolean p2, p1, Lkw6$b;->b:Z

    iput-boolean p2, p0, Lkw6;->b:Z

    .line 4
    iget p2, p1, Lkw6$b;->c:I

    iput p2, p0, Lkw6;->c:I

    .line 5
    iget p2, p1, Lkw6$b;->d:I

    iput p2, p0, Lkw6;->d:I

    .line 6
    iget p2, p1, Lkw6$b;->e:I

    iput p2, p0, Lkw6;->e:I

    .line 7
    iget p2, p1, Lkw6$b;->f:I

    iput p2, p0, Lkw6;->f:I

    .line 8
    iget p2, p1, Lkw6$b;->g:I

    iput p2, p0, Lkw6;->g:I

    .line 9
    iget-boolean p2, p1, Lkw6$b;->h:Z

    iput-boolean p2, p0, Lkw6;->h:Z

    .line 10
    iget-boolean p2, p1, Lkw6$b;->i:Z

    iput-boolean p2, p0, Lkw6;->i:Z

    .line 11
    iget p2, p1, Lkw6$b;->j:I

    iput p2, p0, Lkw6;->j:I

    .line 12
    iget-boolean p2, p1, Lkw6$b;->k:Z

    iput-boolean p2, p0, Lkw6;->k:Z

    .line 13
    iget p2, p1, Lkw6$b;->l:I

    iput p2, p0, Lkw6;->l:I

    .line 14
    iget p2, p1, Lkw6$b;->m:I

    iput p2, p0, Lkw6;->m:I

    .line 15
    iget-boolean p2, p1, Lkw6$b;->n:Z

    iput-boolean p2, p0, Lkw6;->n:Z

    .line 16
    iget-boolean p2, p1, Lkw6$b;->o:Z

    iput-boolean p2, p0, Lkw6;->o:Z

    .line 17
    iget p2, p1, Lkw6$b;->p:I

    iput p2, p0, Lkw6;->p:I

    .line 18
    iget p2, p1, Lkw6$b;->q:I

    iput p2, p0, Lkw6;->q:I

    .line 19
    iget p2, p1, Lkw6$b;->r:I

    iput p2, p0, Lkw6;->r:I

    .line 20
    iget-boolean p2, p1, Lkw6$b;->s:Z

    iput-boolean p2, p0, Lkw6;->s:Z

    .line 21
    iget-boolean p2, p1, Lkw6$b;->t:Z

    iput-boolean p2, p0, Lkw6;->t:Z

    .line 22
    iget-boolean p2, p1, Lkw6$b;->u:Z

    iput-boolean p2, p0, Lkw6;->u:Z

    .line 23
    iget-boolean p2, p1, Lkw6$b;->v:Z

    iput-boolean p2, p0, Lkw6;->v:Z

    .line 24
    iget-boolean p1, p1, Lkw6$b;->w:Z

    iput-boolean p1, p0, Lkw6;->w:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lkw6;
    .locals 4

    .line 1
    sget-object v0, Lkx6;->e:Lkx6;

    new-instance v1, Lkw6$b;

    invoke-direct {v1}, Lkw6$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/noinnion/android/reader/R$bool;->isTablet7Inch:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    sget-object v2, Lkx6;->f:Lkx6;

    iput-object v2, v1, Lkw6$b;->a:Lkx6;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/noinnion/android/reader/R$bool;->isTablet10Inch:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    sget-object v2, Lkx6;->g:Lkx6;

    iput-object v2, v1, Lkw6$b;->a:Lkx6;

    goto :goto_0

    .line 6
    :cond_1
    iput-object v0, v1, Lkw6$b;->a:Lkx6;

    .line 7
    :goto_0
    invoke-static {}, Llw6;->k()Z

    move-result v2

    iput-boolean v2, v1, Lkw6$b;->b:Z

    .line 8
    invoke-static {p0}, Liw6;->t(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Lkw6$b;->c:I

    const/4 v2, 0x0

    const-string v3, "item_font_type"

    .line 9
    invoke-static {p0, v3, v2}, Liw6;->m(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 10
    iput v3, v1, Lkw6$b;->d:I

    .line 11
    iget-object v3, v1, Lkw6$b;->a:Lkx6;

    if-ne v3, v0, :cond_2

    const/16 v0, 0x10

    goto :goto_1

    :cond_2
    const/16 v0, 0x13

    :goto_1
    const-string v3, "item_body_font_size"

    .line 12
    invoke-static {p0, v3, v0}, Liw6;->m(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 13
    iput v0, v1, Lkw6$b;->e:I

    const/4 v0, 0x1

    const-string v3, "item_text_align"

    .line 14
    invoke-static {p0, v3, v0}, Liw6;->m(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    .line 15
    iput v3, v1, Lkw6$b;->f:I

    .line 16
    invoke-static {p0}, Liw6;->u(Landroid/content/Context;)I

    move-result v3

    iput v3, v1, Lkw6$b;->g:I

    const-string v3, "item_autoload_reading_mode"

    .line 17
    invoke-static {p0, v3, v2}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    .line 18
    iput-boolean v3, v1, Lkw6$b;->i:Z

    const-string v3, "item_autoload_link"

    .line 19
    invoke-static {p0, v3, v2}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    .line 20
    iput-boolean v3, v1, Lkw6$b;->h:Z

    .line 21
    invoke-static {p0}, Liw6;->B(Landroid/content/Context;)I

    move-result v3

    iput v3, v1, Lkw6$b;->j:I

    const-string v3, "offline_autoload_cache"

    .line 22
    invoke-static {p0, v3, v0}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    .line 23
    iput-boolean v3, v1, Lkw6$b;->k:Z

    .line 24
    invoke-static {p0}, Liw6;->L(Landroid/content/Context;)I

    move-result v3

    iput v3, v1, Lkw6$b;->l:I

    .line 25
    invoke-static {p0}, Liw6;->J(Landroid/content/Context;)I

    move-result v3

    iput v3, v1, Lkw6$b;->m:I

    const-string v3, "item_inapp_youtube"

    .line 26
    invoke-static {p0, v3, v0}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    .line 27
    iput-boolean v3, v1, Lkw6$b;->n:Z

    const-string v3, "item_pinch_zoom"

    .line 28
    invoke-static {p0, v3, v2}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 29
    iput-boolean v2, v1, Lkw6$b;->o:Z

    .line 30
    invoke-static {p0}, Liw6;->w(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Lkw6$b;->p:I

    .line 31
    invoke-static {p0}, Liw6;->y(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Lkw6$b;->q:I

    .line 32
    invoke-static {p0}, Liw6;->h(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Lkw6$b;->r:I

    const-string v2, "show_item_bar"

    .line 33
    invoke-static {p0, v2, v0}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 34
    iput-boolean v2, v1, Lkw6$b;->t:Z

    const-string v2, "show_navigation_bar"

    .line 35
    invoke-static {p0, v2, v0}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 36
    iput-boolean v2, v1, Lkw6$b;->s:Z

    const-string v2, "show_zoom_button"

    .line 37
    invoke-static {p0, v2, v0}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 38
    iput-boolean v2, v1, Lkw6$b;->u:Z

    const-string v2, "auto_hide_item_controls"

    .line 39
    invoke-static {p0, v2, v0}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 40
    iput-boolean v2, v1, Lkw6$b;->v:Z

    const-string v2, "item_hardware_accelerated"

    .line 41
    invoke-static {p0, v2, v0}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    .line 42
    iput-boolean p0, v1, Lkw6$b;->w:Z

    .line 43
    new-instance p0, Lkw6;

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lkw6;-><init>(Lkw6$b;Lkw6$a;)V

    return-object p0
.end method


# virtual methods
.method public b(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lkx6;->e:Lkx6;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/noinnion/android/reader/R$bool;->isTablet7Inch:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lkx6;->f:Lkx6;

    iput-object v1, p0, Lkw6;->a:Lkx6;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/noinnion/android/reader/R$bool;->isTablet10Inch:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    sget-object v1, Lkx6;->g:Lkx6;

    iput-object v1, p0, Lkw6;->a:Lkx6;

    goto :goto_0

    .line 5
    :cond_1
    iput-object v0, p0, Lkw6;->a:Lkx6;

    .line 6
    :goto_0
    invoke-static {}, Llw6;->k()Z

    move-result v1

    iput-boolean v1, p0, Lkw6;->b:Z

    .line 7
    invoke-static {p1}, Liw6;->t(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lkw6;->c:I

    const/4 v1, 0x0

    const-string v2, "item_font_type"

    .line 8
    invoke-static {p1, v2, v1}, Liw6;->m(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 9
    iput v2, p0, Lkw6;->d:I

    .line 10
    iget-object v2, p0, Lkw6;->a:Lkx6;

    if-ne v2, v0, :cond_2

    const/16 v0, 0x10

    goto :goto_1

    :cond_2
    const/16 v0, 0x13

    :goto_1
    const-string v2, "item_body_font_size"

    .line 11
    invoke-static {p1, v2, v0}, Liw6;->m(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 12
    iput v0, p0, Lkw6;->e:I

    const/4 v0, 0x1

    const-string v2, "item_text_align"

    .line 13
    invoke-static {p1, v2, v0}, Liw6;->m(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 14
    iput v2, p0, Lkw6;->f:I

    const-string v2, "item_autoload_reading_mode"

    .line 15
    invoke-static {p1, v2, v1}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 16
    iput-boolean v2, p0, Lkw6;->i:Z

    const-string v2, "item_autoload_link"

    .line 17
    invoke-static {p1, v2, v1}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 18
    iput-boolean v2, p0, Lkw6;->h:Z

    .line 19
    invoke-static {p1}, Liw6;->u(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lkw6;->g:I

    const-string v2, "offline_autoload_cache"

    .line 20
    invoke-static {p1, v2, v0}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 21
    iput-boolean v2, p0, Lkw6;->k:Z

    .line 22
    invoke-static {p1}, Liw6;->B(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lkw6;->j:I

    .line 23
    invoke-static {p1}, Liw6;->L(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lkw6;->l:I

    .line 24
    invoke-static {p1}, Liw6;->J(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lkw6;->m:I

    const-string v2, "item_inapp_youtube"

    .line 25
    invoke-static {p1, v2, v0}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    .line 26
    iput-boolean v2, p0, Lkw6;->n:Z

    const-string v2, "item_pinch_zoom"

    .line 27
    invoke-static {p1, v2, v1}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 28
    iput-boolean v1, p0, Lkw6;->o:Z

    .line 29
    invoke-static {p1}, Liw6;->w(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lkw6;->p:I

    .line 30
    invoke-static {p1}, Liw6;->y(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lkw6;->q:I

    .line 31
    invoke-static {p1}, Liw6;->h(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lkw6;->r:I

    const-string v1, "show_item_bar"

    .line 32
    invoke-static {p1, v1, v0}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 33
    iput-boolean v1, p0, Lkw6;->t:Z

    const-string v1, "show_navigation_bar"

    .line 34
    invoke-static {p1, v1, v0}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 35
    iput-boolean v1, p0, Lkw6;->s:Z

    const-string v1, "show_zoom_button"

    .line 36
    invoke-static {p1, v1, v0}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 37
    iput-boolean v1, p0, Lkw6;->u:Z

    const-string v1, "auto_hide_item_controls"

    .line 38
    invoke-static {p1, v1, v0}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 39
    iput-boolean v1, p0, Lkw6;->v:Z

    const-string v1, "item_hardware_accelerated"

    .line 40
    invoke-static {p1, v1, v0}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    .line 41
    iput-boolean p1, p0, Lkw6;->w:Z

    return-void
.end method
