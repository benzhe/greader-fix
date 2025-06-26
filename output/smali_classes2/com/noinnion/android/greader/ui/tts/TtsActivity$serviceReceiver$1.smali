.class public final Lcom/noinnion/android/greader/ui/tts/TtsActivity$serviceReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/tts/TtsActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/tts/TtsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity$serviceReceiver$1;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const-string v0, "c"

    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "mEmptyView"

    const/16 v2, 0x8

    const-string v3, "mTitleText"

    const-string v4, "ttsTitle"

    const/4 v5, 0x1

    const-string v6, "mLanguageText"

    const/4 v7, 0x0

    const/4 v8, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    const-string v0, "com.noinnion.android.greader.reader.action.START_INIT"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 4
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity$serviceReceiver$1;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->D:Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity$serviceReceiver$1;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    .line 7
    iget-object v0, p1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->mTitleText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 8
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->D:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity$serviceReceiver$1;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->B()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity$serviceReceiver$1;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    .line 12
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    const-string p1, "ttsCurrLanguage"

    .line 14
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 15
    invoke-static {p1}, Ljx6;->a(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    .line 16
    iget-object p2, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity$serviceReceiver$1;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    .line 17
    iget-object p2, p2, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->mLanguageText:Landroid/widget/TextView;

    if-eqz p2, :cond_1

    .line 18
    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 19
    :cond_1
    invoke-static {v6}, Lim7;->k(Ljava/lang/String;)V

    throw v8

    .line 20
    :cond_2
    invoke-static {v1}, Lim7;->k(Ljava/lang/String;)V

    throw v8

    .line 21
    :cond_3
    invoke-static {v3}, Lim7;->k(Ljava/lang/String;)V

    throw v8

    :sswitch_1
    const-string v0, "com.noinnion.android.greader.reader.action.INIT_ITEM"

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 23
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity$serviceReceiver$1;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    iput-object v0, p1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->D:Ljava/lang/String;

    .line 25
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity$serviceReceiver$1;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    .line 26
    iget-object v0, p1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->mTitleText:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 27
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->D:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity$serviceReceiver$1;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    const-string v0, "ttsTextArray"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 30
    iput-object p2, p1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->K:Ljava/util/List;

    .line 31
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity$serviceReceiver$1;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    .line 32
    iget-object p2, p1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->J:Lcom/noinnion/android/greader/ui/tts/TtsActivity$a;

    if-nez p2, :cond_5

    .line 33
    new-instance p2, Lcom/noinnion/android/greader/ui/tts/TtsActivity$a;

    iget-object v0, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity$serviceReceiver$1;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    const v3, 0x7f0c010b

    .line 34
    iget-object v4, v0, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->K:Ljava/util/List;

    if-eqz v4, :cond_4

    goto :goto_0

    .line 35
    :cond_4
    sget-object v4, Lhk7;->e:Lhk7;

    :goto_0
    invoke-direct {p2, v0, v0, v3, v4}, Lcom/noinnion/android/greader/ui/tts/TtsActivity$a;-><init>(Lcom/noinnion/android/greader/ui/tts/TtsActivity;Landroid/content/Context;ILjava/util/List;)V

    .line 36
    iput-object p2, p1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->J:Lcom/noinnion/android/greader/ui/tts/TtsActivity$a;

    .line 37
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity$serviceReceiver$1;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->B()Landroid/widget/ListView;

    move-result-object p1

    iget-object p2, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity$serviceReceiver$1;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    .line 38
    iget-object p2, p2, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->J:Lcom/noinnion/android/greader/ui/tts/TtsActivity$a;

    .line 39
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 40
    :cond_5
    invoke-virtual {p2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 41
    :goto_1
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity$serviceReceiver$1;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    .line 42
    invoke-virtual {p1, v5}, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->C(Z)V

    .line 43
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity$serviceReceiver$1;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    invoke-virtual {p1}, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->B()Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v7}, Landroid/widget/ListView;->setVisibility(I)V

    .line 44
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity$serviceReceiver$1;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    .line 45
    iget-object p1, p1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->mEmptyView:Landroid/view/View;

    if-eqz p1, :cond_6

    .line 46
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 47
    :cond_6
    invoke-static {v1}, Lim7;->k(Ljava/lang/String;)V

    throw v8

    .line 48
    :cond_7
    invoke-static {v3}, Lim7;->k(Ljava/lang/String;)V

    throw v8

    :sswitch_2
    const-string v0, "com.noinnion.android.greader.reader.action.STATUS_CHANGED"

    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "ttsIsSpeaking"

    .line 50
    invoke-virtual {p2, p1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string v0, "ttsCurrParagraph"

    .line 51
    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "ttsCurrSentence"

    .line 52
    invoke-virtual {p2, v1, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 53
    iget-object v1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity$serviceReceiver$1;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    if-nez p2, :cond_a

    .line 54
    iget-object p2, v1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->J:Lcom/noinnion/android/greader/ui/tts/TtsActivity$a;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/noinnion/android/greader/ui/tts/TtsActivity$a;->getCount()I

    move-result v7

    :cond_8
    if-lez v7, :cond_a

    if-ge v0, v7, :cond_a

    .line 55
    iput v0, v1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->F:I

    .line 56
    iget-object p2, v1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->mListView:Landroid/widget/ListView;

    if-eqz p2, :cond_9

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_2

    :cond_9
    const-string p1, "mListView"

    invoke-static {p1}, Lim7;->k(Ljava/lang/String;)V

    throw v8

    .line 57
    :cond_a
    :goto_2
    invoke-virtual {v1, p1}, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->C(Z)V

    goto/16 :goto_5

    :sswitch_3
    const-string p2, "com.noinnion.android.greader.reader.action.STOP_SERVICE"

    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 59
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity$serviceReceiver$1;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_5

    :sswitch_4
    const-string v0, "com.noinnion.android.greader.reader.action.INIT_LANGUAGE"

    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 61
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity$serviceReceiver$1;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    const-string v0, "ttsAvailableVoices"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 62
    iput-object p2, p1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->z:Ljava/util/ArrayList;

    .line 63
    iget-object p1, p0, Lcom/noinnion/android/greader/ui/tts/TtsActivity$serviceReceiver$1;->a:Lcom/noinnion/android/greader/ui/tts/TtsActivity;

    .line 64
    iget-object p2, p1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->z:Ljava/util/ArrayList;

    if-eqz p2, :cond_11

    .line 65
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "service_tts_default_locale"

    .line 66
    invoke-static {v0, v1}, Liw6;->F(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v2, v8

    :cond_b
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "availableVoice"

    .line 69
    invoke-static {v3, v4}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Ljx6;->a(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v4

    .line 70
    new-instance v9, Ljx6$a;

    invoke-direct {v9, v4}, Ljx6$a;-><init>(Ljava/util/Locale;)V

    .line 71
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "(this as java.lang.String).toLowerCase()"

    invoke-static {v3, v4}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v0}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 73
    invoke-virtual {v9}, Ljx6$a;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_c
    if-nez v2, :cond_b

    .line 74
    invoke-virtual {v9}, Ljx6$a;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 75
    :cond_d
    iget-object p2, p1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->mLanguageText:Landroid/widget/TextView;

    if-eqz p2, :cond_10

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    new-instance p2, Lhv6;

    invoke-direct {p2}, Lhv6;-><init>()V

    const-string v0, "$this$sortedWith"

    .line 77
    invoke-static {v1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comparator"

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, "null cannot be cast to non-null type kotlin.Array<T>"

    if-gt v2, v5, :cond_e

    invoke-static {v1}, Lek7;->s(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    goto :goto_4

    :cond_e
    new-array v2, v7, [Ljava/lang/Object;

    .line 79
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "$this$sortWith"

    .line 80
    invoke-static {v1, v2}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    array-length v0, v1

    if-le v0, v5, :cond_f

    invoke-static {v1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 82
    :cond_f
    invoke-static {v1}, Lek7;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    :goto_4
    new-array v0, v7, [Ljx6$a;

    .line 83
    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    check-cast p2, [Ljx6$a;

    .line 85
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090009

    invoke-direct {v0, p1, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 87
    iput-object v0, p1, Lcom/noinnion/android/greader/ui/tts/TtsActivity;->A:Landroid/widget/ArrayAdapter;

    goto :goto_5

    .line 88
    :cond_10
    invoke-static {v6}, Lim7;->k(Ljava/lang/String;)V

    throw v8

    :cond_11
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x78c7f5ea -> :sswitch_4
        -0x260772f7 -> :sswitch_3
        -0x9e7ab48 -> :sswitch_2
        0x28bf08d1 -> :sswitch_1
        0x393110de -> :sswitch_0
    .end sparse-switch
.end method
