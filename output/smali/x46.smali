.class public final synthetic Lx46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltc7;


# instance fields
.field public final e:Lkg6;


# direct methods
.method public constructor <init>(Lkg6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx46;->e:Lkg6;

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lx46;->e:Lkg6;

    check-cast p1, Ljava/lang/Boolean;

    .line 1
    invoke-virtual {v0}, Lkg6;->G()Lkg6$c;

    move-result-object v1

    sget-object v2, Lkg6$c;->e:Lkg6$c;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    new-array v1, v4, [Ljava/lang/Object;

    .line 2
    invoke-virtual {v0}, Lkg6;->J()Llg6;

    move-result-object v0

    invoke-virtual {v0}, Llg6;->E()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    aput-object p1, v1, v2

    const-string p1, "Already impressed campaign %s ? : %s"

    .line 3
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ln56;->u1(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lkg6;->G()Lkg6$c;

    move-result-object v1

    sget-object v5, Lkg6$c;->f:Lkg6$c;

    invoke-virtual {v1, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v1, v4, [Ljava/lang/Object;

    .line 6
    invoke-virtual {v0}, Lkg6;->E()Ljg6;

    move-result-object v0

    invoke-virtual {v0}, Ljg6;->E()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    aput-object p1, v1, v2

    const-string p1, "Already impressed experiment %s ? : %s"

    .line 7
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Ln56;->u1(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
