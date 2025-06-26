.class public final synthetic Lxg6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwf5;


# static fields
.field public static final a:Lwf5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lxg6;

    invoke-direct {v0}, Lxg6;-><init>()V

    sput-object v0, Lxg6;->a:Lwf5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ltf5;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Lah6$a;

    .line 2
    invoke-interface {p1, v0}, Ltf5;->d(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    .line 3
    new-instance v0, Lah6;

    invoke-direct {v0, p1}, Lah6;-><init>(Ljava/util/Set;)V

    return-object v0
.end method
