.class Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;
.super Ljava/lang/Object;
.source "BaseEventsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/events/BaseEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

.field final synthetic val$event:Lcom/ironsource/eventsmodule/EventData;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iput-object p2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 139
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$000(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    const-string v1, "eventSessionId"

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$100(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$200(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v1

    const/16 v2, 0x28

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v1}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v1

    const/16 v2, 0x29

    if-eq v1, v2, :cond_1

    .line 146
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    const-string v2, "connectionType"

    invoke-virtual {v1, v2, v0}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-static {v1, v0, v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$300(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Ljava/lang/String;Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$400(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ironsource/eventsmodule/EventData;->setEventId(I)V

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v0}, Lcom/ironsource/eventsmodule/EventData;->getAdditionalDataJSON()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v2, "reason"

    .line 154
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    const-string v2, "reason"

    .line 156
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x32

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    const-string v3, "reason"

    invoke-virtual {v2, v3, v0}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 164
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->getGenericEventParams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 165
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->getGenericEventParams()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 166
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v3}, Lcom/ironsource/eventsmodule/EventData;->getAdditionalDataJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "eventId"

    if-eq v3, v4, :cond_4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "timestamp"

    if-eq v3, v4, :cond_4

    .line 167
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    .line 173
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"eventId\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v3}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",\"timestamp\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v3}, Lcom/ironsource/eventsmodule/EventData;->getTimeStamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v3}, Lcom/ironsource/eventsmodule/EventData;->getAdditionalData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 174
    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v3}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$500(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->EVENT:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v5, ","

    const-string v6, "\n"

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 176
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    :goto_2
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$600(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 182
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$700(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$800(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 183
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->getSessionDepth(Lcom/ironsource/eventsmodule/EventData;)I

    move-result v1

    .line 184
    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    const-string v3, "sessionDepth"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 187
    :cond_6
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->increaseSessionDepthIfNeeded(Lcom/ironsource/eventsmodule/EventData;)V

    .line 189
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->shouldExtractCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 190
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->setCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)V

    goto :goto_3

    .line 192
    :cond_7
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v2}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->getCurrentPlacement(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->shouldIncludeCurrentPlacement(Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 193
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    const-string v2, "placement"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v4, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v4}, Lcom/ironsource/eventsmodule/EventData;->getEventId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->getCurrentPlacement(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 197
    :cond_8
    :goto_3
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$900(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v1}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1008(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)I

    .line 201
    :cond_9
    iget-object v1, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->val$event:Lcom/ironsource/eventsmodule/EventData;

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->isTopPriorityEvent(Lcom/ironsource/eventsmodule/EventData;)Z

    move-result v1

    .line 203
    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1100(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Z

    move-result v2

    if-nez v2, :cond_a

    if-eqz v1, :cond_a

    .line 204
    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v2, v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1102(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Z)Z

    .line 206
    :cond_a
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1200(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Lcom/ironsource/eventsmodule/DataBaseEventsStorage;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 208
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1300(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 209
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1400(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)V

    goto :goto_4

    .line 210
    :cond_b
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    iget-object v2, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$900(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1500(Lcom/ironsource/mediationsdk/events/BaseEventsManager;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_c

    if-eqz v1, :cond_d

    .line 211
    :cond_c
    iget-object v0, p0, Lcom/ironsource/mediationsdk/events/BaseEventsManager$1;->this$0:Lcom/ironsource/mediationsdk/events/BaseEventsManager;

    invoke-static {v0}, Lcom/ironsource/mediationsdk/events/BaseEventsManager;->access$1600(Lcom/ironsource/mediationsdk/events/BaseEventsManager;)V

    :cond_d
    :goto_4
    return-void

    :cond_e
    :goto_5
    return-void
.end method
