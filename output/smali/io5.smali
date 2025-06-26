.class public final Lio5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldo5;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio5$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldo5<",
        "Lio5;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lio5$a;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lyn5<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lao5<",
            "*>;>;"
        }
    .end annotation
.end field

.field public c:Lyn5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyn5<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio5$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio5$a;-><init>(Lho5;)V

    sput-object v0, Lio5;->e:Lio5$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio5;->a:Ljava/util/Map;

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lio5;->b:Ljava/util/Map;

    .line 4
    sget-object v2, Leo5;->a:Leo5;

    iput-object v2, p0, Lio5;->c:Lyn5;

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lio5;->d:Z

    .line 6
    const-class v2, Ljava/lang/String;

    sget-object v3, Lfo5;->a:Lfo5;

    .line 7
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-class v2, Ljava/lang/Boolean;

    sget-object v3, Lgo5;->a:Lgo5;

    .line 10
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-class v2, Ljava/util/Date;

    sget-object v3, Lio5;->e:Lio5$a;

    .line 13
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
