.class public final Lz40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc70;


# instance fields
.field public final synthetic a:Lu40;


# direct methods
.method public constructor <init>(Lu40;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz40;->a:Lu40;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lz40;->a:Lu40;

    .line 2
    iget-object v0, v0, Lu40;->e:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 4
    :catch_0
    iget-object v0, p0, Lz40;->a:Lu40;

    .line 5
    iget-object v0, v0, Lu40;->e:Landroid/content/SharedPreferences;

    long-to-int p3, p2

    .line 6
    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lz40;->a:Lu40;

    .line 2
    iget-object v0, v0, Lu40;->e:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lz40;->a:Lu40;

    .line 2
    iget-object v0, v0, Lu40;->e:Landroid/content/SharedPreferences;

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/lang/String;D)Ljava/lang/Double;
    .locals 1

    .line 1
    iget-object v0, p0, Lz40;->a:Lu40;

    .line 2
    iget-object v0, v0, Lu40;->e:Landroid/content/SharedPreferences;

    double-to-float p2, p2

    .line 3
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method
