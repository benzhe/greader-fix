.class public final synthetic Luf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd2;


# static fields
.field public static final a:Lqd2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Luf2;

    invoke-direct {v0}, Luf2;-><init>()V

    sput-object v0, Luf2;->a:Lqd2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Law2;
    .locals 1

    .line 1
    sget-object v0, Ltf2;->a:Lnd2;

    invoke-static {v0}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object v0

    return-object v0
.end method
