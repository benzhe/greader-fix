.class public Llz5;
.super Le06;
.source "SourceFile"


# instance fields
.field public final e:Lty5;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljj7<",
            "Lf06;",
            ">;>;"
        }
    .end annotation
.end field

.field public final g:Lyz5;

.field public final h:Li06;

.field public final i:Li06;

.field public final j:Lc06;

.field public final k:Ltz5;

.field public final l:Landroid/app/Application;

.field public final m:Lwz5;

.field public n:Lj96;

.field public o:Luy5;

.field public p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lty5;Ljava/util/Map;Lyz5;Li06;Li06;Lc06;Landroid/app/Application;Ltz5;Lwz5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lty5;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljj7<",
            "Lf06;",
            ">;>;",
            "Lyz5;",
            "Li06;",
            "Li06;",
            "Lc06;",
            "Landroid/app/Application;",
            "Ltz5;",
            "Lwz5;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le06;-><init>()V

    .line 2
    iput-object p1, p0, Llz5;->e:Lty5;

    .line 3
    iput-object p2, p0, Llz5;->f:Ljava/util/Map;

    .line 4
    iput-object p3, p0, Llz5;->g:Lyz5;

    .line 5
    iput-object p4, p0, Llz5;->h:Li06;

    .line 6
    iput-object p5, p0, Llz5;->i:Li06;

    .line 7
    iput-object p6, p0, Llz5;->j:Lc06;

    .line 8
    iput-object p7, p0, Llz5;->l:Landroid/app/Application;

    .line 9
    iput-object p8, p0, Llz5;->k:Ltz5;

    .line 10
    iput-object p9, p0, Llz5;->m:Lwz5;

    return-void
.end method

.method public static a(Llz5;Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Dismissing fiam"

    .line 2
    invoke-static {v0}, Lc50;->s0(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Llz5;->d(Landroid/app/Activity;)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Llz5;->n:Lj96;

    .line 5
    iput-object p1, p0, Llz5;->o:Luy5;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Llz5;->h:Li06;

    .line 2
    iget-object v1, v0, Li06;->a:Landroid/os/CountDownTimer;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 4
    iput-object v2, v0, Li06;->a:Landroid/os/CountDownTimer;

    .line 5
    :cond_0
    iget-object v0, p0, Llz5;->i:Li06;

    .line 6
    iget-object v1, v0, Li06;->a:Landroid/os/CountDownTimer;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 8
    iput-object v2, v0, Li06;->a:Landroid/os/CountDownTimer;

    :cond_1
    return-void
.end method

.method public final c(Lh96;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p1, Lh96;->a:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final d(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Llz5;->j:Lc06;

    invoke-virtual {v0}, Lc06;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Llz5;->j:Lc06;

    .line 3
    invoke-virtual {v0}, Lc06;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lc06;->b(Landroid/app/Activity;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v1, v0, Lc06;->a:Lq06;

    invoke-virtual {v1}, Lq06;->f()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 5
    iput-object p1, v0, Lc06;->a:Lq06;

    .line 6
    :cond_0
    invoke-virtual {p0}, Llz5;->b()V

    :cond_1
    return-void
.end method

.method public final e(Landroid/app/Activity;)V
    .locals 9

    .line 1
    iget-object v0, p0, Llz5;->n:Lj96;

    const-string v1, "FIAM.Display"

    if-eqz v0, :cond_e

    iget-object v2, p0, Llz5;->e:Lty5;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v0, v0, Lj96;->a:Lcom/google/firebase/inappmessaging/model/MessageType;

    .line 4
    sget-object v2, Lcom/google/firebase/inappmessaging/model/MessageType;->UNSUPPORTED:Lcom/google/firebase/inappmessaging/model/MessageType;

    invoke-virtual {v0, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "The message being triggered is not supported by this version of the sdk."

    .line 5
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Llz5;->f:Ljava/util/Map;

    iget-object v2, p0, Llz5;->n:Lj96;

    .line 7
    iget-object v2, v2, Lj96;->a:Lcom/google/firebase/inappmessaging/model/MessageType;

    .line 8
    iget-object v3, p0, Llz5;->l:Landroid/app/Application;

    .line 9
    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x4

    if-ne v3, v5, :cond_5

    .line 10
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v2, v5, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v7, :cond_2

    if-eq v2, v8, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "CARD_PORTRAIT"

    goto :goto_0

    :cond_2
    const-string v4, "BANNER_PORTRAIT"

    goto :goto_0

    :cond_3
    const-string v4, "IMAGE_ONLY_PORTRAIT"

    goto :goto_0

    :cond_4
    const-string v4, "MODAL_PORTRAIT"

    goto :goto_0

    .line 11
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v2, v5, :cond_9

    if-eq v2, v6, :cond_8

    if-eq v2, v7, :cond_7

    if-eq v2, v8, :cond_6

    goto :goto_0

    :cond_6
    const-string v4, "CARD_LANDSCAPE"

    goto :goto_0

    :cond_7
    const-string v4, "BANNER_LANDSCAPE"

    goto :goto_0

    :cond_8
    const-string v4, "IMAGE_ONLY_LANDSCAPE"

    goto :goto_0

    :cond_9
    const-string v4, "MODAL_LANDSCAPE"

    .line 12
    :goto_0
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj7;

    .line 13
    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf06;

    .line 14
    iget-object v2, p0, Llz5;->n:Lj96;

    .line 15
    iget-object v2, v2, Lj96;->a:Lcom/google/firebase/inappmessaging/model/MessageType;

    .line 16
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eq v2, v5, :cond_d

    if-eq v2, v6, :cond_c

    if-eq v2, v7, :cond_b

    if-eq v2, v8, :cond_a

    const-string p1, "No bindings found for this message type"

    .line 17
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 18
    :cond_a
    iget-object v1, p0, Llz5;->k:Ltz5;

    iget-object v2, p0, Llz5;->n:Lj96;

    .line 19
    invoke-static {}, Lb16;->a()Lb16$b;

    move-result-object v3

    new-instance v4, Lt16;

    iget-object v1, v1, Ltz5;->a:Landroid/app/Application;

    invoke-direct {v4, v2, v0, v1}, Lt16;-><init>(Lj96;Lf06;Landroid/app/Application;)V

    .line 20
    iput-object v4, v3, Lb16$b;->a:Lt16;

    .line 21
    invoke-virtual {v3}, Lb16$b;->a()Ld16;

    move-result-object v0

    .line 22
    check-cast v0, Lb16;

    .line 23
    iget-object v0, v0, Lb16;->g:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr06;

    goto :goto_1

    .line 24
    :cond_b
    iget-object v1, p0, Llz5;->k:Ltz5;

    iget-object v2, p0, Llz5;->n:Lj96;

    .line 25
    invoke-static {}, Lb16;->a()Lb16$b;

    move-result-object v3

    new-instance v4, Lt16;

    iget-object v1, v1, Ltz5;->a:Landroid/app/Application;

    invoke-direct {v4, v2, v0, v1}, Lt16;-><init>(Lj96;Lf06;Landroid/app/Application;)V

    .line 26
    iput-object v4, v3, Lb16$b;->a:Lt16;

    .line 27
    invoke-virtual {v3}, Lb16$b;->a()Ld16;

    move-result-object v0

    .line 28
    check-cast v0, Lb16;

    .line 29
    iget-object v0, v0, Lb16;->f:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo06;

    goto :goto_1

    .line 30
    :cond_c
    iget-object v1, p0, Llz5;->k:Ltz5;

    iget-object v2, p0, Llz5;->n:Lj96;

    .line 31
    invoke-static {}, Lb16;->a()Lb16$b;

    move-result-object v3

    new-instance v4, Lt16;

    iget-object v1, v1, Ltz5;->a:Landroid/app/Application;

    invoke-direct {v4, v2, v0, v1}, Lt16;-><init>(Lj96;Lf06;Landroid/app/Application;)V

    .line 32
    iput-object v4, v3, Lb16$b;->a:Lt16;

    .line 33
    invoke-virtual {v3}, Lb16$b;->a()Ld16;

    move-result-object v0

    .line 34
    check-cast v0, Lb16;

    .line 35
    iget-object v0, v0, Lb16;->d:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lt06;

    goto :goto_1

    .line 36
    :cond_d
    iget-object v1, p0, Llz5;->k:Ltz5;

    iget-object v2, p0, Llz5;->n:Lj96;

    .line 37
    invoke-static {}, Lb16;->a()Lb16$b;

    move-result-object v3

    new-instance v4, Lt16;

    iget-object v1, v1, Ltz5;->a:Landroid/app/Application;

    invoke-direct {v4, v2, v0, v1}, Lt16;-><init>(Lj96;Lf06;Landroid/app/Application;)V

    .line 38
    iput-object v4, v3, Lb16$b;->a:Lt16;

    .line 39
    invoke-virtual {v3}, Lb16$b;->a()Ld16;

    move-result-object v0

    .line 40
    check-cast v0, Lb16;

    .line 41
    iget-object v0, v0, Lb16;->e:Ljj7;

    invoke-interface {v0}, Ljj7;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv06;

    :goto_1
    const v1, 0x1020002

    .line 42
    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Llz5$a;

    invoke-direct {v2, p0, p1, v0}, Llz5$a;-><init>(Llz5;Landroid/app/Activity;Lq06;)V

    .line 43
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_e
    const-string p1, "No active message found to render"

    .line 44
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 9

    .line 1
    iget-object v0, p0, Llz5;->p:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 2
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "Unbinding from activity: "

    .line 3
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc50;->w0(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Llz5;->e:Lty5;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Removing display event component"

    .line 6
    invoke-static {v1}, Ln56;->u1(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lty5;->d:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;

    .line 8
    iget-object v0, p0, Llz5;->g:Lyz5;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 9
    iget-object v0, v0, Lyz5;->a:Le27;

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lp27;->a()V

    if-eqz v2, :cond_4

    .line 12
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Le27;->i:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    .line 14
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ll17;

    .line 15
    iget-object v8, v7, Ll17;->j:Ljava/lang/Object;

    .line 16
    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 17
    invoke-virtual {v7}, Ll17;->d()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Le27;->a(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 18
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, v0, Le27;->j:Ljava/util/Map;

    .line 19
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v5, v0, :cond_3

    .line 21
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls17;

    .line 22
    iget-object v6, v4, Ls17;->e:Li27;

    .line 23
    iget-object v6, v6, Li27;->d:Ljava/lang/Object;

    .line 24
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 25
    invoke-virtual {v4}, Ls17;->a()V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 26
    :cond_3
    invoke-virtual {p0, p1}, Llz5;->d(Landroid/app/Activity;)V

    .line 27
    iput-object v1, p0, Llz5;->p:Ljava/lang/String;

    goto :goto_2

    .line 28
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot cancel requests with null tag."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_5
    :goto_2
    iget-object v0, p0, Llz5;->e:Lty5;

    .line 30
    iget-object v0, v0, Lty5;->b:Lv26;

    .line 31
    iget-object v1, v0, Lv26;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 32
    iget-object v1, v0, Lv26;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 33
    iget-object v0, v0, Lv26;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 34
    invoke-super {p0, p1}, Le06;->onActivityPaused(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Le06;->onActivityResumed(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Llz5;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "Binding to activity: "

    .line 4
    invoke-static {v0}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc50;->w0(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Llz5;->e:Lty5;

    .line 6
    new-instance v1, Lkz5;

    invoke-direct {v1, p0, p1}, Lkz5;-><init>(Llz5;Landroid/app/Activity;)V

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Setting display event component"

    .line 8
    invoke-static {v2}, Ln56;->u1(Ljava/lang/String;)V

    .line 9
    iput-object v1, v0, Lty5;->d:Lcom/google/firebase/inappmessaging/FirebaseInAppMessagingDisplay;

    .line 10
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llz5;->p:Ljava/lang/String;

    .line 11
    :cond_1
    iget-object v0, p0, Llz5;->n:Lj96;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {p0, p1}, Llz5;->e(Landroid/app/Activity;)V

    :cond_2
    return-void
.end method
