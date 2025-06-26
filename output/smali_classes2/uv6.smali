.class public Luv6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/SharedPreferences;

.field public b:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Luv6;->b:Landroid/content/SharedPreferences$Editor;

    const-string v0, "com.noinnion.android.greader.reader.widget.WidgetPreferences"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Luv6;->a:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static g(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "prefix_"

    .line 1
    invoke-static {v0, p0, p1}, Ljo;->h(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Luv6;->e()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "widget_type"

    .line 2
    invoke-static {p1, v1}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "tag"

    .line 3
    invoke-static {p1, v1}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "title"

    .line 4
    invoke-static {p1, v1}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "position"

    .line 5
    invoke-static {p1, v1}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "unread_only"

    .line 6
    invoke-static {p1, v1}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "item_limit"

    .line 7
    invoke-static {p1, v1}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "scroll_speed"

    .line 8
    invoke-static {p1, v1}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "text_color"

    .line 9
    invoke-static {p1, v1}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "background_opacity"

    .line 10
    invoke-static {p1, v1}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "background_color"

    .line 11
    invoke-static {p1, v1}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "show_thumbnail"

    .line 12
    invoke-static {p1, v1}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "show_tts_button"

    .line 13
    invoke-static {p1, v1}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 14
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public b(Landroid/content/Context;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Luv6;->a:Landroid/content/SharedPreferences;

    const-string v1, "show_thumbnail"

    invoke-static {p2, v1}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    if-nez p2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    if-ne p2, v0, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-static {p1}, Ln56;->H0(Landroid/content/Context;)I

    move-result p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_3

    return v1

    :cond_3
    const/4 v2, 0x2

    if-ne p2, v2, :cond_4

    if-eq p1, v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public c(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Luv6;->a:Landroid/content/SharedPreferences;

    const-string v1, "background_color"

    invoke-static {p1, v1}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "#33b5e5"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public d(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Luv6;->a:Landroid/content/SharedPreferences;

    const-string v1, "background_opacity"

    invoke-static {p1, v1}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/16 p1, 0x64

    return p1
.end method

.method public e()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 1
    iget-object v0, p0, Luv6;->b:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Luv6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Luv6;->b:Landroid/content/SharedPreferences$Editor;

    .line 3
    :cond_0
    iget-object v0, p0, Luv6;->b:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method public f(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Luv6;->a:Landroid/content/SharedPreferences;

    const-string v1, "item_limit"

    invoke-static {p1, v1}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/16 p1, 0x14

    return p1
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2
    iget-object v0, p0, Luv6;->b:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method public h(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Luv6;->a:Landroid/content/SharedPreferences;

    const-string v1, "position"

    invoke-static {p1, v1}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public i(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Luv6;->a:Landroid/content/SharedPreferences;

    const-string v1, "scroll_speed"

    invoke-static {p1, v1}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public j(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Luv6;->a:Landroid/content/SharedPreferences;

    const-string v1, "tag"

    invoke-static {p1, v1}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public k(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Luv6;->a:Landroid/content/SharedPreferences;

    const-string v1, "text_color"

    invoke-static {p1, v1}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public l(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Luv6;->a:Landroid/content/SharedPreferences;

    const-string v1, "title"

    invoke-static {p1, v1}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public m(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Luv6;->a:Landroid/content/SharedPreferences;

    const-string v1, "unread_only"

    invoke-static {p1, v1}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public n(II)V
    .locals 1

    const-string v0, "position"

    .line 1
    invoke-static {p1, v0}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Luv6;->e()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public o(ILjava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    .line 1
    invoke-static {p1, v0}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Luv6;->e()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public p(ILjava/lang/String;)V
    .locals 1

    const-string v0, "title"

    .line 1
    invoke-static {p1, v0}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Luv6;->e()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public q(II)V
    .locals 1

    const-string v0, "widget_type"

    .line 1
    invoke-static {p1, v0}, Luv6;->g(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Luv6;->e()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
