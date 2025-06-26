.class public final La21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu11;


# instance fields
.field public final a:Lvp0;


# direct methods
.method public constructor <init>(Lvp0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La21;->a:Lvp0;

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "npa_reset"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const-string v0, "npa"

    .line 2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, La21;->a:Lvp0;

    .line 4
    iget-object v0, v0, Lvp0;->a:Ltp0;

    invoke-virtual {v0, p1}, Ltp0;->a(I)V

    return-void
.end method
