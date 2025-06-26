.class public final synthetic Ldu6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic e:Lqu6;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lqu6;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldu6;->e:Lqu6;

    iput-object p2, p0, Ldu6;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    iget-object p1, p0, Ldu6;->e:Lqu6;

    iget-object v0, p0, Ldu6;->f:Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/Long;

    const/high16 v2, 0x1040000

    const v3, 0x104000a

    const/4 v4, 0x4

    const/16 v5, 0x1a

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v1, :cond_7

    if-eq p2, v6, :cond_6

    if-eq p2, v4, :cond_5

    if-eq p2, v5, :cond_3

    const/16 v1, 0x2c

    if-eq p2, v1, :cond_2

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 3
    :pswitch_0
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2, v0, v1, v8}, Lip6;->c(Landroid/content/Context;JZ)Lip6;

    move-result-object p2

    if-nez p2, :cond_1

    goto/16 :goto_0

    .line 6
    :cond_1
    iget-object p2, p2, Lip6;->h:Ljava/lang/String;

    .line 7
    new-instance v4, Lt75;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lt75;-><init>(Landroid/content/Context;)V

    .line 8
    iget-object v5, v4, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p2, v5, Landroidx/appcompat/app/AlertController$b;->e:Ljava/lang/CharSequence;

    const p2, 0x7f1101c4

    .line 9
    invoke-virtual {v4, p2}, Lt75;->g(I)Lt75;

    .line 10
    invoke-virtual {p1, v3}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    new-instance v3, Lau6;

    invoke-direct {v3, p1, v0, v1}, Lau6;-><init>(Lqu6;J)V

    invoke-virtual {v4, p2, v3}, Lt75;->k(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lt75;

    .line 11
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    sget-object p2, Lfu6;->e:Lfu6;

    invoke-virtual {v4, p1, p2}, Lt75;->i(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lt75;

    .line 12
    invoke-virtual {v4}, La0$a;->e()La0;

    goto/16 :goto_0

    .line 13
    :pswitch_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lwb;

    move-result-object p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/noinnion/android/greader/ui/subscription/ChangeFolderDialog;->d(Lwb;J)V

    goto/16 :goto_0

    .line 14
    :pswitch_2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1, v7}, Ln56;->N(Landroid/content/Context;JLjava/lang/String;)V

    goto/16 :goto_0

    .line 15
    :pswitch_3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lwb;

    move-result-object p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/noinnion/android/greader/ui/subscription/SubEditDialog;->d(Lwb;J)V

    goto/16 :goto_0

    .line 16
    :cond_2
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p2, v0, v1, v8}, Lip6;->c(Landroid/content/Context;JZ)Lip6;

    move-result-object p2

    if-eqz p2, :cond_13

    .line 17
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p2, Lip6;->j:Ljava/lang/String;

    invoke-static {p1, p2}, Ljw6;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 18
    :cond_3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    if-nez p1, :cond_4

    goto/16 :goto_0

    .line 19
    :cond_4
    invoke-static {p1, v0, v1, v6}, Lip6;->c(Landroid/content/Context;JZ)Lip6;

    move-result-object p2

    if-eqz p2, :cond_13

    .line 20
    iget-object p2, p2, Lip6;->f:Ljava/lang/String;

    invoke-static {p1, p2}, Ln56;->F1(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 21
    :cond_5
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 22
    new-instance p2, Lqu6$c;

    invoke-direct {p2, p1, v7}, Lqu6$c;-><init>(Lqu6;Lqu6$a;)V

    new-array p1, v6, [Ljava/lang/Long;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v8

    invoke-virtual {p2, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 23
    :cond_6
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p2, v0, v1, v8}, Lip6;->c(Landroid/content/Context;JZ)Lip6;

    move-result-object p2

    if-eqz p2, :cond_13

    .line 24
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p2, Lip6;->h:Ljava/lang/String;

    iget-object p2, p2, Lip6;->f:Ljava/lang/String;

    const-string v1, "feed/"

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Ln56;->P1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 25
    :cond_7
    instance-of v1, v0, Ljava/lang/String;

    const-wide/16 v9, 0x0

    const/16 v11, 0x16

    const/16 v12, 0x15

    if-eqz v1, :cond_f

    if-eq p2, v4, :cond_e

    if-eq p2, v12, :cond_d

    if-eq p2, v11, :cond_c

    const/16 v1, 0x19

    if-eq p2, v1, :cond_9

    if-eq p2, v5, :cond_8

    goto/16 :goto_0

    .line 26
    :cond_8
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ln56;->F1(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 27
    :cond_9
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 28
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    .line 29
    :cond_a
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 30
    invoke-static {v0, p2, v8}, Llp6;->b(Landroid/content/Context;Ljava/lang/String;Z)Llp6;

    move-result-object v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    .line 31
    :cond_b
    new-instance v4, Lt75;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lt75;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {v1, v0}, Llp6;->h(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 33
    iget-object v1, v4, La0$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v0, v1, Landroidx/appcompat/app/AlertController$b;->e:Ljava/lang/CharSequence;

    const v0, 0x7f1101c0

    .line 34
    invoke-virtual {v4, v0}, Lt75;->g(I)Lt75;

    .line 35
    invoke-virtual {p1, v3}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lbu6;

    invoke-direct {v1, p1, p2}, Lbu6;-><init>(Lqu6;Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Lt75;->k(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lt75;

    .line 36
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    sget-object p2, Lgu6;->e:Lgu6;

    invoke-virtual {v4, p1, p2}, Lt75;->i(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lt75;

    .line 37
    invoke-virtual {v4}, La0$a;->e()La0;

    goto :goto_0

    .line 38
    :cond_c
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v9, v10, p2}, Ln56;->N(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_d
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lwb;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->h(Lwb;Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_e
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 41
    new-instance v0, Lqu6$d;

    invoke-direct {v0, p1, v7}, Lqu6$d;-><init>(Lqu6;Lqu6$a;)V

    new-array p1, v6, [Ljava/lang/String;

    aput-object p2, p1, v8

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_f
    if-eq p2, v12, :cond_12

    if-eq p2, v11, :cond_11

    if-eq p2, v5, :cond_10

    goto :goto_0

    .line 42
    :cond_10
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v7}, Ln56;->F1(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_11
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v9, v10, v7}, Ln56;->N(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_12
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lwb;

    move-result-object p1

    invoke-static {p1, v7}, Lcom/noinnion/android/greader/ui/subscription/TagEditDialog;->h(Lwb;Ljava/lang/String;)V

    :cond_13
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
