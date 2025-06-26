.class public final synthetic Lhv1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcv2;


# instance fields
.field public final a:Lgv1;


# direct methods
.method public constructor <init>(Lgv1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhv1;->a:Lgv1;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Law2;
    .locals 3

    iget-object v0, p0, Lhv1;->a:Lgv1;

    check-cast p1, Lorg/json/JSONObject;

    .line 1
    new-instance v1, Lhl2;

    new-instance v2, Lcl2;

    iget-object v0, v0, Lgv1;->c:Lll2;

    invoke-direct {v2, v0}, Lcl2;-><init>(Lll2;)V

    .line 2
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lfl2;->a(Ljava/io/Reader;)Lfl2;

    move-result-object p1

    .line 4
    invoke-direct {v1, v2, p1}, Lhl2;-><init>(Lcl2;Lfl2;)V

    .line 5
    invoke-static {v1}, Lvt2;->j(Ljava/lang/Object;)Law2;

    move-result-object p1

    return-object p1
.end method
