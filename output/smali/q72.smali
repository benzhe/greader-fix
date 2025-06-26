.class public final synthetic Lq72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvs2;


# static fields
.field public static final a:Lvs2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lq72;

    invoke-direct {v0}, Lq72;-><init>()V

    sput-object v0, Lq72;->a:Lvs2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lorg/json/JSONObject;

    .line 1
    sget-object v0, Ll72;->p:Ljava/util/List;

    const-string v0, "nas"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
