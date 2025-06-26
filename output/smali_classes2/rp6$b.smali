.class public Lrp6$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrp6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lrp6;


# direct methods
.method public constructor <init>(Lrp6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrp6$b;->a:Lrp6;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v0, :cond_8

    iget-object v2, p0, Lrp6$b;->a:Lrp6;

    .line 2
    iget-boolean v3, v2, Lrp6;->r:Z

    if-eqz v3, :cond_8

    .line 3
    :try_start_0
    iget-object p1, v2, Lrp6;->s:Lmp6;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Lmp6;->m3()I

    move-result p1

    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lrp6$b;->a:Lrp6;

    .line 6
    iget-object p1, p1, Lrp6;->o:Ljava/util/List;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 8
    iget-object p1, p0, Lrp6$b;->a:Lrp6;

    .line 9
    iget-object p1, p1, Lrp6;->u:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lrp6$b;->a:Lrp6;

    .line 12
    iget-object v0, p1, Lrp6;->v:Landroid/widget/TextView;

    const v1, 0x7f1101ce

    .line 13
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lrp6$b;->a:Lrp6;

    .line 15
    iget-object p1, p1, Lrp6;->p:Lrp6$c;

    .line 16
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void

    .line 17
    :cond_0
    iget-object v2, p0, Lrp6$b;->a:Lrp6;

    .line 18
    iget-object v2, v2, Lrp6;->o:Ljava/util/List;

    .line 19
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, p1, :cond_1

    .line 20
    iget-object p1, p0, Lrp6$b;->a:Lrp6;

    .line 21
    iget-object p1, p1, Lrp6;->o:Ljava/util/List;

    .line 22
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 23
    iget-object p1, p0, Lrp6$b;->a:Lrp6;

    .line 24
    iget-object p1, p1, Lrp6;->s:Lmp6;

    .line 25
    invoke-interface {p1}, Lmp6;->j6()Ljava/util/List;

    move-result-object p1

    .line 26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 27
    iget-object v3, p0, Lrp6$b;->a:Lrp6;

    .line 28
    iget-object v3, v3, Lrp6;->o:Ljava/util/List;

    .line 29
    new-instance v4, Lrp6$d;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v4, v2}, Lrp6$d;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 30
    iget-object v2, p0, Lrp6$b;->a:Lrp6;

    .line 31
    iget-object v2, v2, Lrp6;->o:Ljava/util/List;

    .line 32
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrp6$d;

    .line 33
    iget v4, v3, Lrp6$d;->a:I

    .line 34
    iget-boolean v5, v3, Lrp6$d;->k:Z

    if-nez v5, :cond_2

    .line 35
    iget-object v5, p0, Lrp6$b;->a:Lrp6;

    .line 36
    iget-object v5, v5, Lrp6;->o:Ljava/util/List;

    .line 37
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrp6$d;

    iget-object v6, p0, Lrp6$b;->a:Lrp6;

    .line 38
    iget-object v6, v6, Lrp6;->s:Lmp6;

    .line 39
    invoke-interface {v6, v4}, Lmp6;->x5(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lrp6$d;->c:Ljava/lang/String;

    .line 40
    iget-object v5, p0, Lrp6$b;->a:Lrp6;

    .line 41
    iget-object v5, v5, Lrp6;->o:Ljava/util/List;

    .line 42
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrp6$d;

    iget-object v6, p0, Lrp6$b;->a:Lrp6;

    .line 43
    iget-object v6, v6, Lrp6;->s:Lmp6;

    .line 44
    invoke-interface {v6, v4}, Lmp6;->A2(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lrp6$d;->d:Ljava/lang/String;

    .line 45
    iget-object v5, p0, Lrp6$b;->a:Lrp6;

    .line 46
    iget-object v5, v5, Lrp6;->o:Ljava/util/List;

    .line 47
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrp6$d;

    iget-object v6, p0, Lrp6$b;->a:Lrp6;

    .line 48
    iget-object v6, v6, Lrp6;->s:Lmp6;

    .line 49
    invoke-interface {v6, v4}, Lmp6;->t3(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lrp6$d;->e:Ljava/lang/String;

    .line 50
    iget-object v5, p0, Lrp6$b;->a:Lrp6;

    .line 51
    iget-object v5, v5, Lrp6;->o:Ljava/util/List;

    .line 52
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrp6$d;

    iget-object v6, p0, Lrp6$b;->a:Lrp6;

    .line 53
    iget-object v6, v6, Lrp6;->s:Lmp6;

    .line 54
    invoke-interface {v6, v4}, Lmp6;->R2(I)J

    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v5, p0, Lrp6$b;->a:Lrp6;

    .line 56
    iget-object v5, v5, Lrp6;->o:Ljava/util/List;

    .line 57
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrp6$d;

    iget-object v6, p0, Lrp6$b;->a:Lrp6;

    .line 58
    iget-object v6, v6, Lrp6;->s:Lmp6;

    .line 59
    invoke-interface {v6, v4}, Lmp6;->S5(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lrp6$d;->b:Ljava/lang/String;

    .line 60
    :cond_2
    iget-object v5, p0, Lrp6$b;->a:Lrp6;

    .line 61
    iget-object v5, v5, Lrp6;->s:Lmp6;

    .line 62
    invoke-interface {v5, v4}, Lmp6;->v0(I)I

    move-result v5

    .line 63
    iget-object v6, p0, Lrp6$b;->a:Lrp6;

    .line 64
    iget-object v6, v6, Lrp6;->o:Ljava/util/List;

    .line 65
    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lrp6$d;

    iput v5, v6, Lrp6$d;->g:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    .line 66
    iget-object v6, p0, Lrp6$b;->a:Lrp6;

    .line 67
    iget-object v6, v6, Lrp6;->s:Lmp6;

    .line 68
    invoke-interface {v6, v4}, Lmp6;->L0(I)V

    :cond_3
    if-ne v5, v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    goto :goto_2

    :cond_5
    if-eq v5, v1, :cond_6

    .line 69
    iget-object v5, p0, Lrp6$b;->a:Lrp6;

    .line 70
    iget-object v5, v5, Lrp6;->o:Ljava/util/List;

    .line 71
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrp6$d;

    iget-object v6, p0, Lrp6$b;->a:Lrp6;

    .line 72
    iget-object v6, v6, Lrp6;->s:Lmp6;

    .line 73
    invoke-interface {v6, v4}, Lmp6;->L2(I)I

    move-result v6

    iput v6, v5, Lrp6$d;->f:I

    .line 74
    iget-object v5, p0, Lrp6$b;->a:Lrp6;

    .line 75
    iget-object v5, v5, Lrp6;->o:Ljava/util/List;

    .line 76
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrp6$d;

    iget-object v6, p0, Lrp6$b;->a:Lrp6;

    .line 77
    iget-object v6, v6, Lrp6;->s:Lmp6;

    .line 78
    invoke-interface {v6, v4}, Lmp6;->A1(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lrp6$d;->h:Ljava/lang/String;

    .line 79
    iget-object v5, p0, Lrp6$b;->a:Lrp6;

    .line 80
    iget-object v5, v5, Lrp6;->o:Ljava/util/List;

    .line 81
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrp6$d;

    iget-object v6, p0, Lrp6$b;->a:Lrp6;

    .line 82
    iget-object v6, v6, Lrp6;->s:Lmp6;

    .line 83
    invoke-interface {v6, v4}, Lmp6;->W5(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lrp6$d;->i:Ljava/lang/String;

    .line 84
    iget-object v5, p0, Lrp6$b;->a:Lrp6;

    .line 85
    iget-object v5, v5, Lrp6;->o:Ljava/util/List;

    .line 86
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrp6$d;

    iget-object v6, p0, Lrp6$b;->a:Lrp6;

    .line 87
    iget-object v6, v6, Lrp6;->s:Lmp6;

    .line 88
    invoke-interface {v6, v4}, Lmp6;->D3(I)F

    move-result v4

    iput v4, v5, Lrp6$d;->j:F

    goto :goto_2

    :cond_6
    const/16 v4, 0x64

    .line 89
    iput v4, v3, Lrp6$d;->f:I

    .line 90
    :goto_2
    iput-boolean v0, v3, Lrp6$d;->k:Z

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_1

    .line 91
    :cond_7
    iget-object p1, p0, Lrp6$b;->a:Lrp6;

    .line 92
    iget-object p1, p1, Lrp6;->p:Lrp6$c;

    .line 93
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 94
    iget-object p1, p0, Lrp6$b;->a:Lrp6;

    .line 95
    iget-boolean p1, p1, Lrp6;->w:Z

    if-nez p1, :cond_9

    .line 96
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7d0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_1
    move-exception p1

    .line 98
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3

    :cond_8
    if-ne p1, v1, :cond_9

    .line 99
    iget-object p1, p0, Lrp6$b;->a:Lrp6;

    .line 100
    iput-boolean v0, p1, Lrp6;->w:Z

    :cond_9
    :goto_3
    return-void
.end method
