.class public Lpl6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpl6$a;,
        Lpl6$c;,
        Lpl6$b;
    }
.end annotation


# static fields
.field public static f:Lpl6;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Landroid/content/SharedPreferences;

.field public c:Lpl6$c;

.field public d:Lrl6;

.field public e:Lim6;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lpl6;->a:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lpl6;->b:Landroid/content/SharedPreferences;

    .line 4
    new-instance v1, Lpl6$a;

    invoke-direct {v1, p0}, Lpl6$a;-><init>(Lpl6;)V

    iput-object v1, p0, Lpl6;->c:Lpl6$c;

    .line 5
    iput-object v0, p0, Lpl6;->d:Lrl6;

    .line 6
    iput-object v0, p0, Lpl6;->e:Lim6;

    return-void
.end method

.method public static b()Lpl6;
    .locals 1

    .line 1
    sget-object v0, Lpl6;->f:Lpl6;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lpl6;

    invoke-direct {v0}, Lpl6;-><init>()V

    sput-object v0, Lpl6;->f:Lpl6;

    .line 3
    :cond_0
    sget-object v0, Lpl6;->f:Lpl6;

    return-object v0
.end method


# virtual methods
.method public a()Lrl6;
    .locals 13

    .line 1
    iget-object v0, p0, Lpl6;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lpl6;->d:Lrl6;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lpl6;->a:Landroid/content/Context;

    sget v2, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_preference:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4
    iget-object v1, p0, Lpl6;->b:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lpl6;->a:Landroid/content/Context;

    sget v4, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_preference_is_in_eea_or_unknown:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 5
    iget-object v3, p0, Lpl6;->b:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lpl6;->a:Landroid/content/Context;

    sget v5, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_preference_date:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 6
    iget-object v3, p0, Lpl6;->b:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lpl6;->a:Landroid/content/Context;

    sget v5, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_preference_app_version:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 7
    new-instance v2, Lrl6;

    invoke-static {}, Lql6;->values()[Lql6;

    move-result-object v3

    aget-object v8, v3, v0

    invoke-static {}, Lvl6;->values()[Lvl6;

    move-result-object v0

    aget-object v9, v0, v1

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lrl6;-><init>(Lql6;Lvl6;JI)V

    iput-object v2, p0, Lpl6;->d:Lrl6;

    .line 8
    :cond_0
    iget-object v0, p0, Lpl6;->d:Lrl6;

    return-object v0

    .line 9
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You have not initialised GDPR. Plase call \'GDPR.getInstance().init(context)\' once from anywhere, preferable from your application."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Lrl6;)Z
    .locals 4

    .line 1
    iput-object p1, p0, Lpl6;->d:Lrl6;

    .line 2
    iget-object v0, p0, Lpl6;->b:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lpl6;->a:Landroid/content/Context;

    sget v2, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_preference:I

    .line 4
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v2, p1, Lrl6;->a:Lql6;

    .line 6
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lpl6;->a:Landroid/content/Context;

    sget v2, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_preference_is_in_eea_or_unknown:I

    .line 7
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 8
    iget-object v2, p1, Lrl6;->b:Lvl6;

    .line 9
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lpl6;->a:Landroid/content/Context;

    sget v2, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_preference_date:I

    .line 10
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 11
    iget-wide v2, p1, Lrl6;->c:J

    .line 12
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lpl6;->a:Landroid/content/Context;

    sget v2, Lcom/michaelflisar/gdprdialog/R$string;->gdpr_preference_app_version:I

    .line 13
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 14
    iget v2, p1, Lrl6;->d:I

    .line 15
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 16
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 17
    iget-object v1, p0, Lpl6;->c:Lpl6$c;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lrl6;->a()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "consent saved: %s, success: %b"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    check-cast v1, Lpl6$a;

    .line 18
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method public final d(Lwb;Lcom/michaelflisar/gdprdialog/GDPRSetup;Lvl6;)V
    .locals 3

    .line 1
    new-instance v0, Ltl6;

    invoke-direct {v0}, Ltl6;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "ARG_SETUP"

    .line 3
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const-string p3, "ARG_LOCATION"

    invoke-virtual {v1, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p2, 0x1

    const-string p3, "ARG_PARENT_MUST_IMPLEMENT_CALLBACK"

    .line 5
    invoke-virtual {v1, p3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 7
    const-class p2, Ltl6;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lrb;->show(Lwb;Ljava/lang/String;)V

    return-void
.end method
