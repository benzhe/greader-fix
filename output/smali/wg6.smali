.class public final synthetic Lwg6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwf5;


# static fields
.field public static final a:Lwf5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lwg6;

    invoke-direct {v0}, Lwg6;-><init>()V

    sput-object v0, Lwg6;->a:Lwf5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ltf5;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Leh6;

    const-class v1, Lih6;

    invoke-interface {p1, v1}, Ltf5;->b(Ljava/lang/Class;)Ls96;

    move-result-object p1

    invoke-direct {v0, p1}, Leh6;-><init>(Ls96;)V

    return-object v0
.end method
