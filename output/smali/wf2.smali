.class public final synthetic Lwf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final e:Ljava/util/concurrent/Callable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwf2;

    invoke-direct {v0}, Lwf2;-><init>()V

    sput-object v0, Lwf2;->e:Ljava/util/concurrent/Callable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Ly40;->C:Lo40;

    .line 3
    sget-object v2, Los3;->j:Los3;

    iget-object v2, v2, Los3;->f:Lu40;

    .line 4
    invoke-virtual {v2, v1}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v3, Ly40;->D:Lo40;

    .line 8
    sget-object v4, Los3;->j:Los3;

    iget-object v4, v4, Los3;->f:Lu40;

    .line 9
    invoke-virtual {v4, v3}, Lu40;->a(Lo40;)Ljava/lang/Object;

    move-result-object v3

    .line 10
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_0

    const/4 v2, -0x1

    const-string v3, ","

    .line 11
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 12
    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzbx;->zzer(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 13
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Lvf2;

    invoke-direct {v1, v0}, Lvf2;-><init>(Ljava/util/Map;)V

    return-object v1
.end method
