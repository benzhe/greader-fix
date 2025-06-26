.class public final Lns6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/premium/PremiumActivity;)V
    .locals 0

    iput-object p1, p0, Lns6;->e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    instance-of p2, p1, La0;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p1, v0

    :cond_0
    check-cast p1, La0;

    if-eqz p1, :cond_1

    const p2, 0x1020009

    invoke-virtual {p1, p2}, Li0;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lco7;->F(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    if-eqz p2, :cond_4

    .line 4
    iget-object p1, p0, Lns6;->e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    const p2, 0x7f1102d2

    invoke-static {p1, p2}, Ln56;->W1(Landroid/content/Context;I)V

    return-void

    .line 5
    :cond_4
    iget-object p2, p0, Lns6;->e:Lcom/noinnion/android/greader/ui/premium/PremiumActivity;

    .line 6
    iget-object v0, p2, Lcom/noinnion/android/greader/ui/premium/PremiumActivity;->y:Loj7;

    invoke-interface {v0}, Loj7;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwo6;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "code"

    invoke-static {p1, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, v0, Lwo6;->a:Lgo6;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v1, Lfo6;

    invoke-direct {v1, v0, p1}, Lfo6;-><init>(Lgo6;Ljava/lang/String;)V

    .line 11
    new-instance p1, Lag7;

    invoke-direct {p1, v1}, Lag7;-><init>(Lub7;)V

    const-string v0, "Maybe.create { emitter -\u2026              }\n        }"

    .line 12
    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lvo6;->e:Lvo6;

    invoke-virtual {p1, v0}, Lrb7;->g(Luc7;)Lrb7;

    move-result-object p1

    const-string v0, "promoCodeRepository.getP\u2026      }\n                }"

    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v0, Lej7;->b:Lzb7;

    .line 15
    invoke-virtual {p1, v0}, Lrb7;->n(Lzb7;)Lrb7;

    move-result-object p1

    .line 16
    invoke-static {}, Lfc7;->a()Lzb7;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrb7;->k(Lzb7;)Lrb7;

    move-result-object p1

    const-string v0, "promoCodeUseCase.getProm\u2026dSchedulers.mainThread())"

    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lps6;

    invoke-direct {v0, p2}, Lps6;-><init>(Lcom/noinnion/android/greader/ui/premium/PremiumActivity;)V

    .line 18
    new-instance v1, Lqs6;

    invoke-direct {v1, p2}, Lqs6;-><init>(Lcom/noinnion/android/greader/ui/premium/PremiumActivity;)V

    .line 19
    new-instance v2, Lrs6;

    invoke-direct {v2, p2}, Lrs6;-><init>(Lcom/noinnion/android/greader/ui/premium/PremiumActivity;)V

    .line 20
    invoke-static {p1, v0, v1, v2}, Lbj7;->e(Lrb7;Lpl7;Lel7;Lpl7;)Lic7;

    move-result-object p1

    .line 21
    invoke-static {p1, p2}, Ln56;->j(Lic7;Lcom/noinnion/android/reader/ui/BaseDialogActivity;)V

    return-void
.end method
