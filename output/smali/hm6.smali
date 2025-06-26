.class public Lhm6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhm6$a;
    }
.end annotation


# instance fields
.field public a:Lcom/michaelflisar/gdprdialog/GDPRSetup;

.field public b:Lvl6;

.field public c:Lpl6$b;

.field public d:I

.field public e:Lql6;

.field public f:Z

.field public g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lcom/google/android/material/snackbar/Snackbar;

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lhm6;->c:Lpl6$b;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lhm6;->d:I

    .line 4
    iput-object v0, p0, Lhm6;->e:Lql6;

    .line 5
    iput-boolean v1, p0, Lhm6;->f:Z

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lhm6;->g:Ljava/util/ArrayList;

    .line 7
    iput-object v0, p0, Lhm6;->h:Lcom/google/android/material/snackbar/Snackbar;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lhm6;->i:Ljava/util/List;

    .line 9
    const-class v0, Lcom/michaelflisar/gdprdialog/GDPRSetup;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "ARG_SETUP"

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/michaelflisar/gdprdialog/GDPRSetup;

    iput-object v0, p0, Lhm6;->a:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 11
    invoke-static {}, Lvl6;->values()[Lvl6;

    move-result-object v0

    const-string v2, "ARG_LOCATION"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    aget-object p1, v0, p1

    iput-object p1, p0, Lhm6;->b:Lvl6;

    if-eqz p2, :cond_1

    const-string p1, "KEY_STEP"

    .line 12
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lhm6;->d:I

    const-string p1, "KEY_SELECTED_CONSENT"

    .line 13
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    invoke-static {}, Lql6;->values()[Lql6;

    move-result-object v0

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    aget-object p1, v0, p1

    iput-object p1, p0, Lhm6;->e:Lql6;

    :cond_0
    const-string p1, "KEY_AGE_CONFIRMED"

    .line 15
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lhm6;->f:Z

    const-string p1, "KEY_EXPLICITLY_CONFIRMED_SERVICES"

    .line 16
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lhm6;->g:Ljava/util/ArrayList;

    goto :goto_1

    .line 17
    :cond_1
    iget-object p1, p0, Lhm6;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    .line 18
    :goto_0
    iget-object p2, p0, Lhm6;->a:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 19
    iget-object p2, p2, Lcom/michaelflisar/gdprdialog/GDPRSetup;->i:[Lcom/michaelflisar/gdprdialog/GDPRNetwork;

    .line 20
    array-length p2, p2

    if-ge p1, p2, :cond_2

    .line 21
    iget-object p2, p0, Lhm6;->g:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget v0, p0, Lhm6;->d:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2
    iput v1, p0, Lhm6;->d:I

    .line 3
    invoke-virtual {p0}, Lhm6;->h()V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public b(Landroid/app/Activity;Landroid/view/View;Lhm6$a;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    sget v4, Lcom/michaelflisar/gdprdialog/R$id;->toolbar:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/Toolbar;

    .line 2
    iget-object v5, v0, Lhm6;->a:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 3
    iget-boolean v6, v5, Lcom/michaelflisar/gdprdialog/GDPRSetup;->n:Z

    if-nez v6, :cond_1

    .line 4
    iget-boolean v5, v5, Lcom/michaelflisar/gdprdialog/GDPRSetup;->l:Z

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const/16 v5, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x0

    .line 5
    :goto_1
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6
    iget-object v5, v0, Lhm6;->a:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 7
    iget-object v5, v5, Lcom/michaelflisar/gdprdialog/GDPRSetup;->t:Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;

    .line 8
    invoke-virtual {v5}, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->b()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 9
    iget-object v5, v0, Lhm6;->a:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 10
    iget-object v5, v5, Lcom/michaelflisar/gdprdialog/GDPRSetup;->t:Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;

    .line 11
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 12
    :cond_2
    sget v5, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_dialog_title:I

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/Toolbar;->setTitle(I)V

    .line 13
    :goto_2
    iget-object v4, v0, Lhm6;->i:Ljava/util/List;

    sget v5, Lcom/michaelflisar/gdprdialog/R$id;->llPage0:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v4, v0, Lhm6;->i:Ljava/util/List;

    sget v5, Lcom/michaelflisar/gdprdialog/R$id;->llPage1:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v4, v0, Lhm6;->i:Ljava/util/List;

    sget v5, Lcom/michaelflisar/gdprdialog/R$id;->llPage2:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    sget v4, Lcom/michaelflisar/gdprdialog/R$id;->btAgree:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 17
    sget v5, Lcom/michaelflisar/gdprdialog/R$id;->btDisagree:I

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 18
    sget v6, Lcom/michaelflisar/gdprdialog/R$id;->btNoConsentAtAll:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 19
    sget v7, Lcom/michaelflisar/gdprdialog/R$id;->tvQuestion:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 20
    sget v8, Lcom/michaelflisar/gdprdialog/R$id;->tvText1:I

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 21
    sget v9, Lcom/michaelflisar/gdprdialog/R$id;->tvText2:I

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 22
    sget v10, Lcom/michaelflisar/gdprdialog/R$id;->tvText3:I

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 23
    sget v11, Lcom/michaelflisar/gdprdialog/R$id;->cbAge:I

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/CheckBox;

    .line 24
    iget-object v12, v0, Lhm6;->a:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 25
    iget-object v13, v12, Lcom/michaelflisar/gdprdialog/GDPRSetup;->t:Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;

    .line 26
    iget v14, v13, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->g:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_4

    iget-object v15, v13, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->h:Ljava/lang/String;

    if-eqz v15, :cond_3

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v15, 0x1

    :goto_4
    move-object/from16 v17, v4

    const-string v4, ""

    if-eqz v15, :cond_6

    const/4 v15, -0x1

    if-eq v14, v15, :cond_5

    .line 27
    invoke-virtual {v1, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    :cond_5
    iget-object v12, v13, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->h:Ljava/lang/String;

    .line 28
    :goto_5
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 29
    :cond_6
    sget v13, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_dialog_question:I

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v12}, Lcom/michaelflisar/gdprdialog/GDPRSetup;->a()Z

    move-result v12

    if-eqz v12, :cond_7

    iget-object v12, v0, Lhm6;->a:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 30
    iget-boolean v12, v12, Lcom/michaelflisar/gdprdialog/GDPRSetup;->q:Z

    if-nez v12, :cond_7

    .line 31
    sget v12, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_dialog_question_ads_info:I

    invoke-virtual {v1, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_6

    :cond_7
    move-object v12, v4

    :goto_6
    const/4 v15, 0x0

    aput-object v12, v14, v15

    invoke-virtual {v1, v13, v14}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 32
    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    :goto_7
    iget-object v7, v0, Lhm6;->a:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 34
    iget-object v12, v7, Lcom/michaelflisar/gdprdialog/GDPRSetup;->t:Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;

    .line 35
    iget v13, v12, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->k:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_9

    iget-object v15, v12, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->l:Ljava/lang/String;

    if-eqz v15, :cond_8

    goto :goto_8

    :cond_8
    const/4 v15, 0x0

    goto :goto_9

    :cond_9
    :goto_8
    const/4 v15, 0x1

    :goto_9
    if-eqz v15, :cond_b

    if-eq v13, v14, :cond_a

    .line 36
    invoke-virtual {v1, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    :cond_a
    iget-object v7, v12, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->l:Ljava/lang/String;

    .line 37
    :goto_a
    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 38
    :cond_b
    iget-boolean v7, v7, Lcom/michaelflisar/gdprdialog/GDPRSetup;->f:Z

    if-eqz v7, :cond_c

    .line 39
    sget v7, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_cheap:I

    goto :goto_b

    :cond_c
    sget v7, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_free:I

    :goto_b
    invoke-virtual {v1, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 40
    sget v12, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_dialog_text1_part1:I

    invoke-virtual {v1, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 41
    iget-object v13, v0, Lhm6;->a:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 42
    iget-boolean v13, v13, Lcom/michaelflisar/gdprdialog/GDPRSetup;->s:Z

    if-eqz v13, :cond_d

    const-string v13, " "

    .line 43
    invoke-static {v12, v13}, Ljo;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget v13, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_dialog_text1_part2:I

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    invoke-virtual {v1, v13, v14}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 44
    :cond_d
    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    :goto_c
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 46
    iget-object v7, v0, Lhm6;->a:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 47
    iget-object v8, v7, Lcom/michaelflisar/gdprdialog/GDPRSetup;->t:Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;

    .line 48
    iget v12, v8, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->i:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_f

    iget-object v14, v8, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->j:Ljava/lang/String;

    if-eqz v14, :cond_e

    goto :goto_d

    :cond_e
    const/4 v14, 0x0

    goto :goto_e

    :cond_f
    :goto_d
    const/4 v14, 0x1

    :goto_e
    if-eqz v14, :cond_11

    if-eq v12, v13, :cond_10

    .line 49
    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_f

    :cond_10
    iget-object v7, v8, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->j:Ljava/lang/String;

    .line 50
    :goto_f
    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v19, v4

    goto/16 :goto_12

    .line 51
    :cond_11
    invoke-virtual {v7}, Lcom/michaelflisar/gdprdialog/GDPRSetup;->b()Ljava/util/HashSet;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    .line 52
    iget-object v8, v0, Lhm6;->a:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 53
    invoke-virtual {v8}, Lcom/michaelflisar/gdprdialog/GDPRSetup;->b()Ljava/util/HashSet;

    move-result-object v8

    invoke-static {v1, v8}, Ln56;->G0(Landroid/content/Context;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x1

    if-ne v7, v12, :cond_12

    .line 54
    sget v7, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_dialog_text2_singular:I

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v12, v13

    .line 55
    invoke-virtual {v1, v7, v12}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_10

    :cond_12
    const/4 v13, 0x0

    sget v7, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_dialog_text2_plural:I

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v8, v12, v13

    .line 56
    invoke-virtual {v1, v7, v12}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 57
    :goto_10
    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    .line 58
    new-instance v8, Landroid/text/SpannableStringBuilder;

    invoke-direct {v8, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 59
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-class v12, Landroid/text/style/URLSpan;

    invoke-virtual {v8, v13, v7, v12}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/URLSpan;

    .line 60
    array-length v12, v7

    const/4 v13, 0x0

    :goto_11
    if-ge v13, v12, :cond_13

    aget-object v14, v7, v13

    .line 61
    new-instance v15, Lbm6;

    invoke-direct {v15, v0}, Lbm6;-><init>(Lhm6;)V

    move-object/from16 v16, v7

    .line 62
    invoke-virtual {v8, v14}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    move/from16 v18, v12

    .line 63
    invoke-virtual {v8, v14}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    .line 64
    invoke-virtual {v8, v14}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    move-object/from16 v19, v4

    .line 65
    new-instance v4, Lgm6;

    invoke-direct {v4, v0, v15}, Lgm6;-><init>(Lhm6;Ljava/lang/Runnable;)V

    .line 66
    invoke-virtual {v8, v4, v7, v12, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 67
    invoke-virtual {v8, v14}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, p3

    move-object/from16 v7, v16

    move/from16 v12, v18

    move-object/from16 v4, v19

    goto :goto_11

    :cond_13
    move-object/from16 v19, v4

    .line 68
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :goto_12
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 70
    iget-object v3, v0, Lhm6;->a:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 71
    iget-object v3, v3, Lcom/michaelflisar/gdprdialog/GDPRSetup;->t:Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;

    .line 72
    iget v4, v3, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->m:I

    const/4 v7, -0x1

    if-ne v4, v7, :cond_15

    iget-object v8, v3, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->n:Ljava/lang/String;

    if-eqz v8, :cond_14

    goto :goto_13

    :cond_14
    const/4 v8, 0x0

    goto :goto_14

    :cond_15
    :goto_13
    const/4 v8, 0x1

    :goto_14
    if-eqz v8, :cond_17

    if-eq v4, v7, :cond_16

    .line 73
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_15

    :cond_16
    iget-object v3, v3, Lcom/michaelflisar/gdprdialog/GDPRCustomTexts;->n:Ljava/lang/String;

    .line 74
    :goto_15
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16

    .line 75
    :cond_17
    sget v3, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_dialog_text3:I

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :goto_16
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 78
    iget-object v3, v0, Lhm6;->a:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 79
    iget-boolean v3, v3, Lcom/michaelflisar/gdprdialog/GDPRSetup;->j:Z

    if-nez v3, :cond_18

    const/16 v3, 0x8

    .line 80
    invoke-virtual {v11, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_17

    :cond_18
    const/16 v3, 0x8

    .line 81
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-boolean v3, v0, Lhm6;->f:Z

    invoke-virtual {v11, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 83
    new-instance v3, Lcm6;

    invoke-direct {v3, v0}, Lcm6;-><init>(Lhm6;)V

    invoke-virtual {v11, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 84
    :goto_17
    iget-object v3, v0, Lhm6;->a:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 85
    iget-boolean v4, v3, Lcom/michaelflisar/gdprdialog/GDPRSetup;->f:Z

    if-eqz v4, :cond_1a

    .line 86
    iget-boolean v3, v3, Lcom/michaelflisar/gdprdialog/GDPRSetup;->g:Z

    if-nez v3, :cond_19

    .line 87
    sget v3, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_dialog_disagree_buy_app:I

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_18

    .line 88
    :cond_19
    sget v3, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_dialog_disagree_buy_app:I

    invoke-virtual {v6, v3}, Landroid/widget/Button;->setText(I)V

    .line 89
    :cond_1a
    :goto_18
    iget-object v3, v0, Lhm6;->a:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    invoke-virtual {v3}, Lcom/michaelflisar/gdprdialog/GDPRSetup;->a()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 90
    iget-object v4, v0, Lhm6;->a:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 91
    iget-boolean v7, v4, Lcom/michaelflisar/gdprdialog/GDPRSetup;->f:Z

    if-eqz v7, :cond_1b

    .line 92
    iget-boolean v4, v4, Lcom/michaelflisar/gdprdialog/GDPRSetup;->g:Z

    if-nez v4, :cond_1b

    .line 93
    sget v3, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_dialog_disagree_buy_app:I

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setText(I)V

    const/4 v3, 0x1

    :cond_1b
    if-nez v3, :cond_1c

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_dialog_disagree_no_thanks:I

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 95
    sget v4, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_dialog_disagree_info:I

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 96
    new-instance v7, Landroid/text/SpannableString;

    invoke-static {v3, v4}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 97
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v8, 0x1

    invoke-direct {v4, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v7, v4, v9, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 98
    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    const v8, 0x3f4ccccd    # 0.8f

    invoke-direct {v4, v8}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v10

    invoke-virtual {v7, v4, v8, v10, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 99
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v5}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v8

    invoke-direct {v4, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v7}, Landroid/text/SpannableString;->length()I

    move-result v8

    invoke-virtual {v7, v4, v3, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 100
    invoke-virtual {v5, v9}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 101
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 102
    invoke-virtual {v5, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 103
    :cond_1c
    sget v3, Lcom/michaelflisar/gdprdialog/R$id;->tvServiceInfo1:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 104
    sget v3, Lcom/michaelflisar/gdprdialog/R$id;->tvServiceInfo2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 105
    sget v4, Lcom/michaelflisar/gdprdialog/R$id;->tvServiceInfo3:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 106
    iget-object v7, v0, Lhm6;->a:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 107
    iget-object v7, v7, Lcom/michaelflisar/gdprdialog/GDPRSetup;->i:[Lcom/michaelflisar/gdprdialog/GDPRNetwork;

    .line 108
    new-instance v8, Ljava/lang/StringBuilder;

    move-object/from16 v9, v19

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    const/4 v11, 0x0

    .line 110
    :goto_19
    array-length v12, v7

    if-ge v11, v12, :cond_20

    .line 111
    aget-object v12, v7, v11

    .line 112
    iget-object v12, v12, Lcom/michaelflisar/gdprdialog/GDPRNetwork;->j:Ljava/util/ArrayList;

    .line 113
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-nez v12, :cond_1d

    const/4 v12, 0x1

    goto :goto_1a

    :cond_1d
    const/4 v12, 0x0

    .line 114
    :goto_1a
    aget-object v13, v7, v11

    const/4 v14, 0x1

    invoke-virtual {v13, v1, v12, v14}, Lcom/michaelflisar/gdprdialog/GDPRNetwork;->a(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v13

    .line 115
    invoke-virtual {v10, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1f

    .line 116
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    const-string v14, "<br>"

    if-lez v13, :cond_1e

    .line 117
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    const-string v13, "&#8226;&nbsp;"

    .line 118
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v7, v11

    const/4 v15, 0x0

    .line 119
    invoke-virtual {v13, v1, v12, v15}, Lcom/michaelflisar/gdprdialog/GDPRNetwork;->a(Landroid/content/Context;ZZ)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    aget-object v12, v7, v11

    .line 121
    iget-object v12, v12, Lcom/michaelflisar/gdprdialog/GDPRNetwork;->j:Ljava/util/ArrayList;

    .line 122
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/michaelflisar/gdprdialog/GDPRSubNetwork;

    .line 123
    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "&nbsp;&nbsp;&#9702;&nbsp;"

    .line 124
    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v13}, Lcom/michaelflisar/gdprdialog/GDPRSubNetwork;->a()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    :cond_1f
    add-int/lit8 v11, v11, 0x1

    goto :goto_19

    .line 126
    :cond_20
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 127
    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 129
    iget-object v3, v0, Lhm6;->a:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 130
    iget-object v3, v3, Lcom/michaelflisar/gdprdialog/GDPRSetup;->e:Ljava/lang/String;

    if-nez v3, :cond_21

    goto :goto_1c

    .line 131
    :cond_21
    sget v7, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_dialog_text_info3_privacy_policy_part:I

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-virtual {v1, v7, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    :goto_1c
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 132
    sget v8, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_dialog_text_info3:I

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v9, v10, v7

    invoke-virtual {v1, v8, v10}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 133
    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Lhm6;->h()V

    .line 136
    new-instance v4, Lxl6;

    move-object/from16 v7, p3

    invoke-direct {v4, v0, v2, v1, v7}, Lxl6;-><init>(Lhm6;Landroid/view/View;Landroid/app/Activity;Lhm6$a;)V

    move-object/from16 v8, v17

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    new-instance v4, Lam6;

    invoke-direct {v4, v0, v2, v1, v7}, Lam6;-><init>(Lhm6;Landroid/view/View;Landroid/app/Activity;Lhm6$a;)V

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v4, v0, Lhm6;->a:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 139
    iget-boolean v5, v4, Lcom/michaelflisar/gdprdialog/GDPRSetup;->h:Z

    if-nez v5, :cond_23

    iget-boolean v4, v4, Lcom/michaelflisar/gdprdialog/GDPRSetup;->g:Z

    if-eqz v4, :cond_22

    goto :goto_1d

    :cond_22
    const/4 v3, 0x0

    :cond_23
    :goto_1d
    if-nez v3, :cond_24

    const/16 v3, 0x8

    .line 140
    invoke-virtual {v6, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1e

    .line 141
    :cond_24
    new-instance v3, Lyl6;

    invoke-direct {v3, v0, v1, v7}, Lyl6;-><init>(Lhm6;Landroid/app/Activity;Lhm6$a;)V

    invoke-virtual {v6, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    :goto_1e
    sget v3, Lcom/michaelflisar/gdprdialog/R$id;->btBack:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lzl6;

    invoke-direct {v4, v0}, Lzl6;-><init>(Lhm6;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    sget v3, Lcom/michaelflisar/gdprdialog/R$id;->btAgreeNonPersonalised:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Ldm6;

    invoke-direct {v3, v0, v1, v7}, Ldm6;-><init>(Lhm6;Landroid/app/Activity;Lhm6$a;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final c(Landroid/view/View;Z)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lhm6;->a:Lcom/michaelflisar/gdprdialog/GDPRSetup;

    .line 2
    iget-boolean v1, v0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->j:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 3
    iget-boolean p2, p0, Lhm6;->f:Z

    if-nez p2, :cond_1

    .line 4
    sget p2, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_age_not_confirmed:I

    .line 5
    iget-boolean v0, v0, Lcom/michaelflisar/gdprdialog/GDPRSetup;->n:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lcom/google/android/material/snackbar/Snackbar;->t:[I

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lcom/google/android/material/snackbar/Snackbar;->j(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 9
    iput-object p1, p0, Lhm6;->h:Lcom/google/android/material/snackbar/Snackbar;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->l()V

    :goto_0
    return v1

    :cond_1
    return v2
.end method

.method public final d(Landroid/content/Context;Lhm6$a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lhm6;->e:Lql6;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lrl6;

    iget-object v2, p0, Lhm6;->b:Lvl6;

    invoke-direct {v1, p1, v0, v2}, Lrl6;-><init>(Landroid/content/Context;Lql6;Lvl6;)V

    .line 3
    invoke-static {}, Lpl6;->b()Lpl6;

    move-result-object p1

    invoke-virtual {p1, v1}, Lpl6;->c(Lrl6;)Z

    .line 4
    iget-object p1, p0, Lhm6;->c:Lpl6$b;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 5
    invoke-interface {p1, v1, v0}, Lpl6$b;->c(Lrl6;Z)V

    .line 6
    :cond_0
    invoke-interface {p2}, Lhm6$a;->a()V

    return-void
.end method

.method public e()V
    .locals 4

    .line 1
    invoke-static {}, Lpl6;->b()Lpl6;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lpl6;->e:Lim6;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 4
    iput-object v2, v0, Lpl6;->e:Lim6;

    .line 5
    :cond_0
    iput-object v2, p0, Lhm6;->c:Lpl6$b;

    .line 6
    iget-object v0, p0, Lhm6;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public f(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lhm6;->d:I

    const-string v1, "KEY_STEP"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2
    iget-object v0, p0, Lhm6;->e:Lql6;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "KEY_SELECTED_CONSENT"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    :cond_0
    iget-boolean v0, p0, Lhm6;->f:Z

    const-string v1, "KEY_AGE_CONFIRMED"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5
    iget-object v0, p0, Lhm6;->g:Ljava/util/ArrayList;

    const-string v1, "KEY_EXPLICITLY_CONFIRMED_SERVICES"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public g(Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    :try_start_0
    check-cast p1, Lpl6$b;

    iput-object p1, p0, Lhm6;->c:Lpl6$b;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    if-nez p2, :cond_0

    .line 2
    invoke-static {}, Lpl6;->b()Lpl6;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lpl6;->c:Lpl6$c;

    .line 4
    check-cast p1, Lpl6$a;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string p2, "Parent activity must implement GDPR.IGDPRCallback interface!"

    invoke-direct {p1, p2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final h()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lhm6;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lhm6;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iget v3, p0, Lhm6;->d:I

    if-ne v1, v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lhm6;->h:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v0, :cond_2

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Llb5;->b()Llb5;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->n:Llb5$b;

    .line 6
    iget-object v2, v1, Llb5;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 7
    :try_start_0
    invoke-virtual {v1, v0}, Llb5;->c(Llb5$b;)Z

    move-result v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lhm6;->h:Lcom/google/android/material/snackbar/Snackbar;

    const/4 v1, 0x3

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b(I)V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lhm6;->h:Lcom/google/android/material/snackbar/Snackbar;

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 11
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_2
    return-void
.end method
