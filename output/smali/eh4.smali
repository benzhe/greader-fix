.class public final synthetic Leh4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwf5;


# static fields
.field public static final a:Lwf5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Leh4;

    invoke-direct {v0}, Leh4;-><init>()V

    sput-object v0, Leh4;->a:Lwf5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ltf5;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lfh4;->a:Lsf5;

    .line 2
    new-instance v0, Lfh4$a;

    const-class v1, Lbh4;

    .line 3
    invoke-interface {p1, v1}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbh4;

    const-class v2, Lkh6;

    invoke-interface {p1, v2}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkh6;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lfh4$a;-><init>(Lbh4;Lkh6;Lgh4;)V

    return-object v0
.end method
