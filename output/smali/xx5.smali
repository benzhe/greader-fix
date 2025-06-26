.class public final synthetic Lxx5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwf5;


# static fields
.field public static final a:Lxx5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxx5;

    invoke-direct {v0}, Lxx5;-><init>()V

    sput-object v0, Lxx5;->a:Lxx5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ltf5;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lzx5;

    const-class v1, Landroid/content/Context;

    invoke-interface {p1, v1}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const-class v2, Lay5;

    invoke-interface {p1, v2}, Ltf5;->d(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lzx5;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    return-object v0
.end method
