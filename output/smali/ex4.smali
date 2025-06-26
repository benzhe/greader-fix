.class public final Lex4;
.super Lmy4;
.source "SourceFile"


# static fields
.field public static final C:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Lbx4;

.field public final B:Lax4;

.field public c:Landroid/content/SharedPreferences;

.field public d:Lcx4;

.field public final e:Lbx4;

.field public final f:Lbx4;

.field public final g:Lbx4;

.field public final h:Lbx4;

.field public final i:Lbx4;

.field public final j:Lbx4;

.field public final k:Lbx4;

.field public final l:Ldx4;

.field public m:Ljava/lang/String;

.field public n:Z

.field public o:J

.field public final p:Lbx4;

.field public final q:Lzw4;

.field public final r:Ldx4;

.field public final s:Lzw4;

.field public final t:Lbx4;

.field public u:Z

.field public final v:Lzw4;

.field public final w:Lzw4;

.field public final x:Lbx4;

.field public final y:Ldx4;

.field public final z:Ldx4;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/Pair;

    const-wide/16 v1, 0x0

    .line 1
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lex4;->C:Landroid/util/Pair;

    return-void
.end method

.method public constructor <init>(Lrx4;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lmy4;-><init>(Lrx4;)V

    new-instance p1, Lbx4;

    const-string v0, "last_upload"

    const-wide/16 v1, 0x0

    .line 2
    invoke-direct {p1, p0, v0, v1, v2}, Lbx4;-><init>(Lex4;Ljava/lang/String;J)V

    iput-object p1, p0, Lex4;->e:Lbx4;

    new-instance p1, Lbx4;

    const-string v0, "last_upload_attempt"

    .line 3
    invoke-direct {p1, p0, v0, v1, v2}, Lbx4;-><init>(Lex4;Ljava/lang/String;J)V

    iput-object p1, p0, Lex4;->f:Lbx4;

    new-instance p1, Lbx4;

    const-string v0, "backoff"

    .line 4
    invoke-direct {p1, p0, v0, v1, v2}, Lbx4;-><init>(Lex4;Ljava/lang/String;J)V

    iput-object p1, p0, Lex4;->g:Lbx4;

    new-instance p1, Lbx4;

    const-string v0, "last_delete_stale"

    .line 5
    invoke-direct {p1, p0, v0, v1, v2}, Lbx4;-><init>(Lex4;Ljava/lang/String;J)V

    iput-object p1, p0, Lex4;->h:Lbx4;

    new-instance p1, Lbx4;

    const-string v0, "session_timeout"

    const-wide/32 v3, 0x1b7740

    .line 6
    invoke-direct {p1, p0, v0, v3, v4}, Lbx4;-><init>(Lex4;Ljava/lang/String;J)V

    iput-object p1, p0, Lex4;->p:Lbx4;

    new-instance p1, Lzw4;

    const-string v0, "start_new_session"

    const/4 v3, 0x1

    .line 7
    invoke-direct {p1, p0, v0, v3}, Lzw4;-><init>(Lex4;Ljava/lang/String;Z)V

    iput-object p1, p0, Lex4;->q:Lzw4;

    new-instance p1, Lbx4;

    const-string v0, "last_pause_time"

    .line 8
    invoke-direct {p1, p0, v0, v1, v2}, Lbx4;-><init>(Lex4;Ljava/lang/String;J)V

    iput-object p1, p0, Lex4;->t:Lbx4;

    new-instance p1, Ldx4;

    const-string v0, "non_personalized_ads"

    .line 9
    invoke-direct {p1, p0, v0}, Ldx4;-><init>(Lex4;Ljava/lang/String;)V

    iput-object p1, p0, Lex4;->r:Ldx4;

    new-instance p1, Lzw4;

    const-string v0, "allow_remote_dynamite"

    const/4 v3, 0x0

    .line 10
    invoke-direct {p1, p0, v0, v3}, Lzw4;-><init>(Lex4;Ljava/lang/String;Z)V

    iput-object p1, p0, Lex4;->s:Lzw4;

    new-instance p1, Lbx4;

    const-string v0, "midnight_offset"

    .line 11
    invoke-direct {p1, p0, v0, v1, v2}, Lbx4;-><init>(Lex4;Ljava/lang/String;J)V

    iput-object p1, p0, Lex4;->i:Lbx4;

    new-instance p1, Lbx4;

    const-string v0, "first_open_time"

    .line 12
    invoke-direct {p1, p0, v0, v1, v2}, Lbx4;-><init>(Lex4;Ljava/lang/String;J)V

    iput-object p1, p0, Lex4;->j:Lbx4;

    new-instance p1, Lbx4;

    const-string v0, "app_install_time"

    .line 13
    invoke-direct {p1, p0, v0, v1, v2}, Lbx4;-><init>(Lex4;Ljava/lang/String;J)V

    iput-object p1, p0, Lex4;->k:Lbx4;

    new-instance p1, Ldx4;

    const-string v0, "app_instance_id"

    .line 14
    invoke-direct {p1, p0, v0}, Ldx4;-><init>(Lex4;Ljava/lang/String;)V

    iput-object p1, p0, Lex4;->l:Ldx4;

    new-instance p1, Lzw4;

    const-string v0, "app_backgrounded"

    .line 15
    invoke-direct {p1, p0, v0, v3}, Lzw4;-><init>(Lex4;Ljava/lang/String;Z)V

    iput-object p1, p0, Lex4;->v:Lzw4;

    new-instance p1, Lzw4;

    const-string v0, "deep_link_retrieval_complete"

    .line 16
    invoke-direct {p1, p0, v0, v3}, Lzw4;-><init>(Lex4;Ljava/lang/String;Z)V

    iput-object p1, p0, Lex4;->w:Lzw4;

    new-instance p1, Lbx4;

    const-string v0, "deep_link_retrieval_attempts"

    .line 17
    invoke-direct {p1, p0, v0, v1, v2}, Lbx4;-><init>(Lex4;Ljava/lang/String;J)V

    iput-object p1, p0, Lex4;->x:Lbx4;

    new-instance p1, Ldx4;

    const-string v0, "firebase_feature_rollouts"

    .line 18
    invoke-direct {p1, p0, v0}, Ldx4;-><init>(Lex4;Ljava/lang/String;)V

    iput-object p1, p0, Lex4;->y:Ldx4;

    new-instance p1, Ldx4;

    const-string v0, "deferred_attribution_cache"

    .line 19
    invoke-direct {p1, p0, v0}, Ldx4;-><init>(Lex4;Ljava/lang/String;)V

    iput-object p1, p0, Lex4;->z:Ldx4;

    new-instance p1, Lbx4;

    const-string v0, "deferred_attribution_cache_timestamp"

    .line 20
    invoke-direct {p1, p0, v0, v1, v2}, Lbx4;-><init>(Lex4;Ljava/lang/String;J)V

    iput-object p1, p0, Lex4;->A:Lbx4;

    new-instance p1, Lax4;

    .line 21
    invoke-direct {p1, p0}, Lax4;-><init>(Lex4;)V

    iput-object p1, p0, Lex4;->B:Lax4;

    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final g()V
    .locals 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull$List;
        value = {
            .subannotation Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
                value = {
                    "this.preferences"
                }
            .end subannotation,
            .subannotation Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
                value = {
                    "this.monitoringSample"
                }
            .end subannotation
        }
    .end annotation

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 1
    iget-object v0, v0, Lrx4;->a:Landroid/content/Context;

    const-string v1, "com.google.android.gms.measurement.prefs"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lex4;->c:Landroid/content/SharedPreferences;

    const-string v1, "has_been_opened"

    .line 3
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lex4;->u:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lex4;->c:Landroid/content/SharedPreferences;

    .line 4
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x1

    .line 5
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 6
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    new-instance v0, Lcx4;

    iget-object v1, p0, Lly4;->a:Lrx4;

    .line 7
    iget-object v1, v1, Lrx4;->g:Lcs4;

    const-wide/16 v1, 0x0

    .line 8
    sget-object v3, Lew4;->c:Ldw4;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ldw4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 9
    invoke-direct {v0, p0, v1, v2}, Lcx4;-><init>(Lex4;J)V

    iput-object v0, p0, Lex4;->d:Lcx4;

    return-void
.end method

.method public final n()Landroid/content/SharedPreferences;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lly4;->d()V

    .line 2
    invoke-virtual {p0}, Lmy4;->i()V

    iget-object v0, p0, Lex4;->c:Landroid/content/SharedPreferences;

    const-string v1, "null reference"

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lex4;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public final p(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lly4;->d()V

    .line 2
    invoke-virtual {p0}, Lex4;->n()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "measurement_enabled"

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final q()Ljava/lang/Boolean;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lly4;->d()V

    .line 2
    invoke-virtual {p0}, Lex4;->n()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "measurement_enabled"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lex4;->n()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final r(I)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lex4;->n()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "consent_source"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lds4;->i(II)Z

    move-result p1

    return p1
.end method

.method public final s()Lds4;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lly4;->d()V

    .line 2
    invoke-virtual {p0}, Lex4;->n()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "consent_settings"

    const-string v2, "G1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lds4;->b(Ljava/lang/String;)Lds4;

    move-result-object v0

    return-object v0
.end method

.method public final t(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lly4;->d()V

    iget-object v0, p0, Lly4;->a:Lrx4;

    .line 2
    invoke-virtual {v0}, Lrx4;->a()Lqw4;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lqw4;->n:Low4;

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "App measurement setting deferred collection"

    invoke-virtual {v0, v2, v1}, Low4;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Lex4;->n()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "deferred_analytics_collection"

    .line 6
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 7
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final u(J)Z
    .locals 3

    iget-object v0, p0, Lex4;->p:Lbx4;

    .line 1
    invoke-virtual {v0}, Lbx4;->a()J

    move-result-wide v0

    sub-long/2addr p1, v0

    iget-object v0, p0, Lex4;->t:Lbx4;

    .line 2
    invoke-virtual {v0}, Lbx4;->a()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
