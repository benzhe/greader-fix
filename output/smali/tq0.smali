.class public final synthetic Ltq0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvq0;


# instance fields
.field public final a:Lrq0;

.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lrq0;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltq0;->a:Lrq0;

    iput-object p2, p0, Ltq0;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Ltq0;->a:Lrq0;

    iget-object v0, p0, Ltq0;->b:Ljava/util/Map;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p1, Lrq0;->d:Lvp0;

    .line 5
    iget-object p1, p1, Lvp0;->a:Ltp0;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Ltp0;->a(I)V

    :goto_0
    return-void
.end method
