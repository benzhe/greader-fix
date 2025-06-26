.class public final Lcom/noinnion/android/greader/ui/tts/TtsActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/tts/TtsActivity;->showLanguageList(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

.field public final synthetic f:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/tts/TtsActivity;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity$d;->e:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    iput-object p2, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity$d;->f:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const-string p2, "parent"

    invoke-static {p1, p2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.noinnion.android.reader.util.LocaleUtils.TTSLocale"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ljx6$a;

    .line 2
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity$d;->e:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    .line 3
    iget-object p2, p2, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->mLanguageText:Landroid/widget/TextView;

    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p1}, Ljx6$a;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity$d;->e:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "applicationContext"

    invoke-static {p2, p3}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p3, p1, Ljx6$a;->a:Ljava/util/Locale;

    .line 7
    invoke-static {p3}, Ljx6;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p3, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    const-string p4, "(this as java.lang.String).toLowerCase()"

    invoke-static {p3, p4}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "service_tts_default_locale"

    .line 8
    invoke-static {p2, p4, p3}, Liw6;->V(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :try_start_0
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity$d;->e:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    .line 10
    iget-object p2, p2, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->G:Lop6;

    if-eqz p2, :cond_0

    .line 11
    iget-object p1, p1, Ljx6$a;->a:Ljava/util/Locale;

    .line 12
    invoke-static {p1}, Ljx6;->b(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lop6;->V4(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 14
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity$d;->e:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    .line 15
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->y:Landroid/widget/ListPopupWindow;

    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_1
    return-void

    :cond_2
    const-string p1, "mLanguageText"

    .line 17
    invoke-static {p1}, Lim7;->k(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
