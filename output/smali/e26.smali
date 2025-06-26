.class public final synthetic Le26;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lf26;

.field public final f:Lpy5;


# direct methods
.method public constructor <init>(Lf26;Lpy5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le26;->e:Lf26;

    iput-object p2, p0, Le26;->f:Lpy5;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v0, p0, Le26;->e:Lf26;

    iget-object v1, p0, Le26;->f:Lpy5;

    .line 1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating active experiment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lgj6;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ln56;->t1(Ljava/lang/String;)V

    .line 2
    iget-object v0, v0, Lf26;->a:Lye5;

    new-instance v11, Lxe5;

    .line 3
    invoke-virtual {v1}, Lpy5;->D()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v1}, Lpy5;->I()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {v1}, Lpy5;->G()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    .line 6
    invoke-virtual {v1}, Lpy5;->E()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 7
    invoke-virtual {v1}, Lpy5;->H()J

    move-result-wide v7

    .line 8
    invoke-virtual {v1}, Lpy5;->F()J

    move-result-wide v9

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lxe5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JJ)V

    .line 9
    invoke-virtual {v0}, Lye5;->e()V

    .line 10
    sget-object v1, Lxe5;->g:[Ljava/lang/String;

    .line 11
    invoke-virtual {v11}, Lxe5;->b()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lxe5;->c(Ljava/util/Map;)V

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-virtual {v11}, Lxe5;->b()Ljava/util/Map;

    move-result-object v2

    .line 14
    move-object v3, v2

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "triggerEvent"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-static {v2}, Lxe5;->a(Ljava/util/Map;)Lxe5;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v0, v1}, Lye5;->a(Ljava/util/List;)V
    :try_end_0
    .catch Lwe5; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to set experiment as active with ABT, missing analytics?\n"

    .line 17
    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FIAM.Headless"

    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
