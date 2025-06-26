.class public Lm96;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lyy5;)Lb96$b;
    .locals 2

    .line 1
    new-instance v0, Lb96$b;

    invoke-direct {v0}, Lb96$b;-><init>()V

    .line 2
    invoke-virtual {p0}, Lyy5;->C()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lyy5;->C()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iput-object p0, v0, Lb96$b;->a:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static b(Lyy5;Laz5;)Lb96;
    .locals 4

    .line 1
    invoke-static {p0}, Lm96;->a(Lyy5;)Lb96$b;

    move-result-object p0

    .line 2
    invoke-static {}, Laz5;->D()Laz5;

    move-result-object v0

    invoke-virtual {p1, v0}, Lgj6;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 3
    invoke-virtual {p1}, Laz5;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p1}, Laz5;->C()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 5
    :goto_0
    invoke-virtual {p1}, Laz5;->F()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6
    invoke-virtual {p1}, Laz5;->E()Lfz5;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lfz5;->E()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {p1}, Lfz5;->E()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 9
    :goto_1
    invoke-virtual {p1}, Lfz5;->D()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 10
    invoke-virtual {p1}, Lfz5;->D()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, v1

    .line 11
    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 12
    new-instance v3, Lp96;

    invoke-direct {v3, v2, p1, v1}, Lp96;-><init>(Ljava/lang/String;Ljava/lang/String;Lp96$a;)V

    goto :goto_3

    .line 13
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Text model must have a color"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    move-object v3, v1

    .line 14
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    if-eqz v3, :cond_5

    .line 15
    new-instance p1, Le96;

    invoke-direct {p1, v3, v0, v1}, Le96;-><init>(Lp96;Ljava/lang/String;Le96$a;)V

    .line 16
    iput-object p1, p0, Lb96$b;->b:Le96;

    goto :goto_4

    .line 17
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Button model must have text"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Button model must have a color"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lb96$b;->a()Lb96;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lfz5;)Lp96;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lfz5;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lfz5;->D()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 3
    :goto_0
    invoke-virtual {p0}, Lfz5;->E()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {p0}, Lfz5;->E()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v1

    .line 5
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 6
    new-instance v2, Lp96;

    invoke-direct {v2, p0, v0, v1}, Lp96;-><init>(Ljava/lang/String;Ljava/lang/String;Lp96$a;)V

    return-object v2

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Text model must have a color"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
