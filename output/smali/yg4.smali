.class public final synthetic Lyg4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwf5;


# static fields
.field public static final a:Lwf5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyg4;

    invoke-direct {v0}, Lyg4;-><init>()V

    sput-object v0, Lyg4;->a:Lwf5;

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
    new-instance v0, Lzg4;

    const-class v1, Lxg4;

    .line 2
    invoke-interface {p1, v1}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lxg4;

    invoke-direct {v0, p1}, Lzg4;-><init>(Lxg4;)V

    return-object v0
.end method
