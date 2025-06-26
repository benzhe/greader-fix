.class public final synthetic Lqy1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvs2;


# static fields
.field public static final a:Lvs2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lqy1;

    invoke-direct {v0}, Lqy1;-><init>()V

    sput-object v0, Lqy1;->a:Lvs2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lsp3$a;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
