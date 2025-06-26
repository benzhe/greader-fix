.class public final synthetic Lbb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkb0;


# static fields
.field public static final a:Lkb0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbb0;

    invoke-direct {v0}, Lbb0;-><init>()V

    sput-object v0, Lbb0;->a:Lkb0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 3

    check-cast p1, Ldy0;

    .line 1
    sget-object v0, Lva0;->a:Lkb0;

    const-string v0, "tx"

    .line 2
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ty"

    .line 3
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "td"

    .line 4
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 5
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 8
    invoke-interface {p1}, Ldy0;->l()Ld23;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p1, Ld23;->b:Lws2;

    .line 10
    invoke-interface {p1, v0, v1, p2}, Lws2;->zza(III)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Could not parse touch parameters from gmsg."

    .line 11
    invoke-static {p1}, Lis0;->zzez(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
