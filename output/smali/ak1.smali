.class public Lak1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lsk2;


# direct methods
.method public constructor <init>(Lsk2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lak1;->a:Lsk2;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lak1;->a:Lsk2;

    iget-boolean v0, v0, Lsk2;->N:Z

    return v0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lak1;->a:Lsk2;

    iget-boolean v0, v0, Lsk2;->F:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lak1;->a:Lsk2;

    iget-boolean v0, v0, Lsk2;->E:Z

    return v0
.end method
