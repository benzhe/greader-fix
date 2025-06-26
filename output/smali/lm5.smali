.class public Llm5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnj5;


# direct methods
.method public constructor <init>(Lnj5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Llm5;->a:Lnj5;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Ltm5;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "settings_version"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Lhm5;

    invoke-direct {v0}, Lhm5;-><init>()V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lnm5;

    invoke-direct {v0}, Lnm5;-><init>()V

    .line 4
    :goto_0
    iget-object v1, p0, Llm5;->a:Lnj5;

    invoke-interface {v0, v1, p1}, Lmm5;->a(Lnj5;Lorg/json/JSONObject;)Ltm5;

    move-result-object p1

    return-object p1
.end method
