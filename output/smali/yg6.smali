.class public final synthetic Lyg6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwf5;


# static fields
.field public static final a:Lwf5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyg6;

    invoke-direct {v0}, Lyg6;-><init>()V

    sput-object v0, Lyg6;->a:Lwf5;

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
    new-instance v0, Lch6;

    const-class v1, Lbh6;

    .line 2
    invoke-interface {p1, v1}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbh6;

    const-class v2, Lbh4;

    invoke-interface {p1, v2}, Ltf5;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbh4;

    invoke-direct {v0, v1, p1}, Lch6;-><init>(Lbh6;Lbh4;)V

    return-object v0
.end method
