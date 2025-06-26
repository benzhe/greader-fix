.class public final Lcx4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final synthetic e:Lex4;


# direct methods
.method public synthetic constructor <init>(Lex4;J)V
    .locals 2

    iput-object p1, p0, Lcx4;->e:Lex4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "health_monitor"

    invoke-static {p1}, Lbi;->g(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lbi;->b(Z)V

    const-string p1, "health_monitor:start"

    iput-object p1, p0, Lcx4;->a:Ljava/lang/String;

    const-string p1, "health_monitor:count"

    iput-object p1, p0, Lcx4;->b:Ljava/lang/String;

    const-string p1, "health_monitor:value"

    iput-object p1, p0, Lcx4;->c:Ljava/lang/String;

    iput-wide p2, p0, Lcx4;->d:J

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lcx4;->e:Lex4;

    .line 1
    invoke-virtual {v0}, Lly4;->d()V

    iget-object v0, p0, Lcx4;->e:Lex4;

    iget-object v0, v0, Lly4;->a:Lrx4;

    .line 2
    iget-object v0, v0, Lrx4;->n:Lb20;

    .line 3
    invoke-interface {v0}, Lb20;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcx4;->e:Lex4;

    .line 4
    invoke-virtual {v2}, Lex4;->n()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcx4;->b:Ljava/lang/String;

    .line 5
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcx4;->c:Ljava/lang/String;

    .line 6
    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcx4;->a:Ljava/lang/String;

    .line 7
    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 8
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
