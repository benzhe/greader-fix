.class public final Lvq6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/item/ItemFragment;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/item/ItemFragment;)V
    .locals 0

    iput-object p1, p0, Lvq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eq p2, v0, :cond_b

    const/4 v1, 0x2

    if-eq p2, v1, :cond_9

    const/4 v0, 0x3

    if-eq p2, v0, :cond_8

    const/4 v0, 0x4

    if-eq p2, v0, :cond_7

    const/4 v0, 0x6

    if-eq p2, v0, :cond_6

    const/16 v0, 0xb

    if-eq p2, v0, :cond_4

    const/16 p1, 0x8

    if-eq p2, p1, :cond_3

    const/16 p1, 0x9

    if-eq p2, p1, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    iget-object p1, p0, Lvq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 2
    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->o()Landroid/webkit/WebView;

    move-result-object p1

    .line 3
    instance-of p2, p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    if-nez p2, :cond_1

    const/4 p1, 0x0

    :cond_1
    check-cast p1, Lcom/noinnion/android/reader/ui/widget/ItemWebView;

    if-eqz p1, :cond_c

    .line 4
    iget-object p2, p0, Lvq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 5
    invoke-virtual {p2}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->n()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 6
    invoke-static {p2}, Ln56;->K0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    return-void

    .line 7
    :cond_3
    iget-object p1, p0, Lvq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lwb;

    move-result-object p1

    .line 8
    iget-object p2, p0, Lvq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-static {p2}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->d(Lcom/noinnion/android/greader/ui/item/ItemFragment;)Ljava/lang/String;

    move-result-object p2

    .line 9
    iget-object v0, p0, Lvq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 10
    invoke-virtual {v0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->n()Ljava/lang/String;

    move-result-object v0

    .line 11
    new-instance v1, Lvq6$c;

    invoke-direct {v1, p0}, Lvq6$c;-><init>(Lvq6;)V

    const-string v2, "gReader"

    .line 12
    invoke-static {p1, p2, v0, v2, v1}, Luw6;->e(Lwb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Luw6$c;)V

    goto/16 :goto_1

    .line 13
    :cond_4
    iget-object p2, p0, Lvq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 14
    iget-object v0, p2, Lcom/noinnion/android/greader/ui/item/ItemFragment;->i:Lap6;

    if-nez v0, :cond_5

    return-void

    .line 15
    :cond_5
    invoke-virtual {p2, p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->x(Z)V

    goto/16 :goto_1

    .line 16
    :cond_6
    iget-object p1, p0, Lvq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lwb;

    move-result-object v0

    .line 17
    iget-object p1, p0, Lvq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-static {p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->d(Lcom/noinnion/android/greader/ui/item/ItemFragment;)Ljava/lang/String;

    move-result-object v2

    .line 18
    iget-object p1, p0, Lvq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 19
    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->n()Ljava/lang/String;

    move-result-object v3

    .line 20
    new-instance v5, Lvq6$b;

    invoke-direct {v5, p0}, Lvq6$b;-><init>(Lvq6;)V

    const-string v1, "7fnd4H0ZTH078G9880A5166Da2g3T143"

    const-string v4, "gReader"

    .line 21
    invoke-static/range {v0 .. v5}, Lvw6;->e(Lwb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lvw6$c;)V

    goto/16 :goto_1

    .line 22
    :cond_7
    iget-object p1, p0, Lvq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lvq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-static {v0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->d(Lcom/noinnion/android/greader/ui/item/ItemFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lvq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 23
    invoke-virtual {v0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->n()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ln56;->R1(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 25
    :cond_8
    iget-object p1, p0, Lvq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lvq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-static {p2}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->d(Lcom/noinnion/android/greader/ui/item/ItemFragment;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lvq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 26
    invoke-virtual {v0}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->n()Ljava/lang/String;

    move-result-object v0

    .line 27
    invoke-static {p1, p2, v0}, Ln56;->Q1(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 28
    :cond_9
    iget-object p2, p0, Lvq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    iget-object v1, p0, Lvq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    .line 29
    invoke-virtual {v1}, Lcom/noinnion/android/greader/ui/item/ItemFragment;->n()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.noinnion.android.everclip"

    .line 30
    invoke-virtual {p2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 31
    :try_start_0
    invoke-virtual {v3, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    nop

    :goto_0
    if-eqz p1, :cond_a

    .line 32
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "text/plain"

    .line 33
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    sget v0, Lcom/noinnion/android/R$string;->txt_send_to:I

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 37
    :cond_a
    sget p1, Lcom/noinnion/android/R$string;->service_everclip_no_app:I

    invoke-virtual {p2, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p2, p1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 38
    :try_start_1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "market://details?id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 40
    :cond_b
    iget-object p2, p0, Lvq6;->e:Lcom/noinnion/android/greader/ui/item/ItemFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getFragmentManager()Lwb;

    move-result-object p2

    new-instance v1, Lvq6$a;

    invoke-direct {v1, p0}, Lvq6$a;-><init>(Lvq6;)V

    .line 41
    sget v2, Lww6;->g:I

    .line 42
    :try_start_2
    new-instance v2, Lww6;

    invoke-direct {v2}, Lww6;-><init>()V

    .line 43
    iput-object v1, v2, Lww6;->f:Lww6$c;

    .line 44
    check-cast p2, Lxb;

    .line 45
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v1, Lqb;

    invoke-direct {v1, p2}, Lqb;-><init>(Lxb;)V

    const-string p2, "fragment_translate"

    .line 47
    invoke-virtual {v1, p1, v2, p2, v0}, Lqb;->f(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 48
    invoke-virtual {v1}, Lqb;->d()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_c
    :goto_1
    return-void
.end method
